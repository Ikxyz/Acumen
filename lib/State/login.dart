import "package:acumen/State/base.dart";
import "package:acumen/global.dart";

class LoginState extends BaseState {
  String email = "";
  String pwd = "";

  get getEmail => email;

  set setEmail(String email) => this.email = email.trim().toLowerCase();

  get getPwd => pwd;

  set setPwd(String pwd) => this.pwd = pwd;
}
