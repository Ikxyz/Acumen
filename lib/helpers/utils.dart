import "dart:math";

import "../global.dart";

double getWidth(BuildContext context,[int percent=100]) {
  return (percent/100)*MediaQuery.of(context).size.width ;
}

double getHeight(BuildContext context,[int percent=100]) {
  return (percent/100)*MediaQuery.of(context).size.height ;
}

log(arg) {
  if(Debug){
    print("AppLog: $arg");
  }
}



String generateId([String? chars, int? length]) {
  chars ??= "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0987654321";

  length ??= 18;

  String id = "";
  int count = 0;
  final rad = Random();

  while (count <= length) {
    final index = rad.nextInt(length);
    id += chars[index];
    count += 1;
  }

  return id;
}
