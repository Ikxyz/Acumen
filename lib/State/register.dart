import "package:acumen/State/base.dart";

import "../global.dart";
import "../models/user.dart";

class RegisterState extends BaseState {
  String password = "";
  String confirmPassword = "";

  

  final TextEditingController passwordController = TextEditingController();

  final UserModel user = UserModel(
      firstName: "",
      lastName: "",
      email: "",
      tel: "",
      uid: "",
      city: "",
      state: "",
      country: "",
      countryCode: "",
      profileImg: "",
      coverImg: "",
      isAdmin: false,
      isVendor: false,
      isEnabled: true,
      isBanned: false,
      canLiveStream: true,
      lastModified: DateTime.now().toIso8601String());
}
