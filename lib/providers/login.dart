import 'dart:io';

import 'package:acumen/helpers/error.dart';
import 'package:dio/dio.dart';

import "../State/login.dart";
import "../global.dart";
import "base.dart";

class LoginProvider extends BaseProvider {
  @override
  final LoginState state;

  @override
  GlobalKey<FormState>? form = GlobalKey<FormState>();

  LoginProvider(this.state);

  /// * On login Form Saved
  /// Save Input Field Value To Respective Value
  ///
  /// - @Set Email Address
  /// - @Set Password

  /// Set Email Address
  ///
  void setEmail(String? val) {
    state.email = (val ?? "").toLowerCase().trim();
    notifyListeners();
  }

  /// Set Password
  ///
  void setPassword(String? val) {
    state.pwd = (val ?? "");
    notifyListeners();
  }

  ///* Handle validating users provider email address and password with firebase auth
  void login() async {
    try {
          if (form!.currentState!.validate() == false) {
        throw InAppError("form is invalid", errType: InAppErrorType.input)
            .log();
      }

      form!.currentState!.save();

      setLoading(true);

      final String url = "https://user-authh.herokuapp.com/api/v1/user/signin";

      final payload = {"email": state.email, "password": state.pwd};

      final result = await Dio().post(url, data: payload);

      setLoading(false);

      Navigator.of(state.context!)
          .pushNamedAndRemoveUntil(Dashboard.route, (route) => false);
    } on DioError catch (err) {
      setLoading(false);
      if (err.response!.statusCode == 404) {
        showSankBar("user account does not exists");
      }
      if (err.response!.statusCode == 400) {
        showSankBar("Incorrect email address or password");
      }
    } on SocketException {
      setLoading(false);
      InAppError("No Internet Connection").log();
    } on HttpException {
      setLoading(false);
      InAppError("No Internet Connection").log();
    }
  }

  /// Handle Error Event
  onErrorOccurred(dynamic error) {
    setLoading(true);

    showSankBar(error?.message ??
        "error occurred, check your network connection and try again");
  }
}
