import "package:acumen/helpers/error.dart";
import 'package:acumen/pages/dashboard.dart';
import 'package:acumen/pages/index.dart';
import 'package:dio/dio.dart';

import "../State/register.dart";
import "../global.dart";
import "base.dart";

class RegisterProvider extends BaseProvider {
  @override
  final RegisterState state;

  RegisterProvider(this.state) {
    form = GlobalKey<FormState>();
  }

  GlobalKey<FormState>? form;

  void onSetFirstName(String? val) {
    state.user.firstName = (val ?? "").capitalize;
  }

  void onSetLastName(String? val) {
    state.user.lastName = (val ?? "").capitalize;
  }

  void onSetEmail(String? val) {
    state.user.setEmail = (val ?? "").toLowerCase();
  }

  void onSetPassword(String? val) {
    state.password = val ?? "";
  }

  void onSetConfirmPassword(String? val) {
    state.confirmPassword = val ?? "";
  }

  void onSetAccountType(bool? val) {
    setState(() {
      state.user.isVendor = val == true;
      return state;
    });
  }

  /// On Register
  register() async {
    try {
      if (form!.currentState!.validate() == false) {
        throw InAppError("form is invalid", errType: InAppErrorType.input)
            .log();
      }
      setLoading(true);
      form!.currentState!.save();

      final String url = "https://user-authh.herokuapp.com/api/v1/user/signup";

      final payload = {
        "firstname": state.user.firstName,
        "lastname": state.user.lastName,
        "email": state.user.email,
        "password": state.password
      };

      final result = await Dio().post(url, data: payload);

      if (result.statusCode == 201 || result.statusCode==200) {
        setLoading(false);

        Navigator.of(state.context!)
            .pushNamedAndRemoveUntil(Dashboard.route, (route) => false);
      }
    } on DioError catch (err) {
      setLoading(false);
      if (err.response!.statusCode == 404) {
        showSankBar("user account does not exists");
      }
      if (err.response!.statusCode == 400) {
        showSankBar("Incorrect email address or password");
      }
      
    } on InAppError catch (err) {
      setLoading(false);
      err.log();
    } catch (err) {
      setLoading(false);
    }
  }
}
