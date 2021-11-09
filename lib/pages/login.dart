import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';
import 'package:acumen/widgets/flexibles/spacers.dart';
import 'package:acumen/widgets/index.dart';
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:provider/provider.dart";

import "package:acumen/helpers/regex.dart";

import "../../global.dart";
import "../State/login.dart";
import "../providers/login.dart" show LoginProvider;

// ignore: must_be_immutable
class Login extends StatelessWidget {
  static const String route = "/login";

  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);
    provider.setContext(context);
    final state = provider.state;

    return Scaffold(
        body: Form(
      key: provider.form,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // onWillPop: (){},
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            width: getWidth(context),
            height: getHeight(context, 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VSpace.lg,
                VSpace.lg,
                const MBackButton(
                  icon: Icons.arrow_back_rounded,
                ),
                VSpace.md,
                LargeText(
                  r"Sign in",
                  size: FontSizes.s32,
                ),
                Text("Fill in your details to continue",
                    style: Fonts.normalStyle.copyWith(
                        color: AppColors.grey2, fontSize: FontSizes.s18)),
                VSpace.lg,
                TextInputField(
                  onSaved: provider.setEmail,
                  validator: isEmail,
                  labelText: "E-mail",
                ),
                VSpace.md,
                TextInputField(
                  onSaved: provider.setPassword,
                  // validator: isPassword,
                  obscureText: true,
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  labelText: "Password",
                ),
                VSpace.lg,
                VSpace.lg,
                VSpace.lg,
                PElevatedbtn(
                  "Sign in",
                  isLoading: state.isLoading,
                  onTap: provider.login,
                ),
                VSpace.lg,
                VSpace.lg,
                Spacer(),
                Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: Fonts.normalStyle.copyWith(
                              color: AppColors.lightGray,
                              fontSize: FontSizes.s14),
                          children: [
                            TextSpan(text: "By sigining i agree with "),
                            TextSpan(
                                text: "Terms of Use ",
                                style: Fonts.normalStyle
                                    .copyWith(color: Colors.black)),
                            TextSpan(text: "\n and "),
                            TextSpan(
                                text: "Privacy Policy",
                                style: Fonts.normalStyle
                                    .copyWith(color: Colors.black)),
                          ])),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
