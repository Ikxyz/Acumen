import "dart:convert";

import "package:acumen/global.dart";

enum InAppErrorType { network, input, failed }

class InAppError {
  String message;
  int code = 400;
  InAppErrorType errType;

  InAppError(this.message,
      {this.code = 400, this.errType = InAppErrorType.input});

  InAppError log() {
    debugPrint("InAppErr-$code: $message");
    return this;
  }

  Color color() {
    if (errType == InAppErrorType.failed) return Colors.red;
    if (errType == InAppErrorType.network) return Colors.green;

    return Colors.yellow;
  }

  IconData icon() {
    if (errType == InAppErrorType.failed) return Icons.alarm;
    if (errType == InAppErrorType.network) return Icons.cancel;

    return Icons.ac_unit;
  }

  InAppError show(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              content: Column(
                  children: [Icon(icon(), color: color()), Text(message)]));
        });
    return this;
  }

  InAppError copyWith({String? message, int? code}) {
    return InAppError(message ?? this.message, code: code ?? this.code);
  }

  Map<String, dynamic> toMap() {
    return {"message": message, "code": code};
  }

  factory InAppError.fromMap(Map<String, dynamic> map) {
    return InAppError(map["message"], code: map["code"]);
  }

  String toJson() => json.encode(toMap());

  factory InAppError.fromJson(String source) =>
      InAppError.fromMap(json.decode(source));

  @override
  String toString() => "Error(message: $message, code: $code";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InAppError &&
        other.message == message &&
        other.code == code;
  }

  @override
  int get hashCode => message.hashCode ^ code.hashCode;
}
