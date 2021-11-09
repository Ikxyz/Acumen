// ignore: file_names
import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';
import 'package:acumen/widgets/index.dart';

import "../State/register.dart";
import "../helpers/regex.dart";
import "../providers/register.dart";
import "package:provider/provider.dart";

import "../global.dart";

class Register extends StatelessWidget {
  static const String route = "/register";

  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RegisterProvider>(context);
    provider.setContext(context);
    final RegisterState state = provider.state;

    final width = getWidth(context);
    final height = getHeight(context);

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
                  r"Let's start here",
                  size: FontSizes.s32,
                ),
                Text("Fill in your details to begin",
                    style: Fonts.normalStyle.copyWith(
                        color: AppColors.grey2, fontSize: FontSizes.s18)),
                VSpace.lg,
                TextInputField(
                  onSaved: provider.onSetFirstName,
                  validator: isNotNull,
                  textCapitalization: TextCapitalization.words,
                  labelText: "First Name:",
                ),
                VSpace.md,
                TextInputField(
                  onSaved: provider.onSetLastName,
                  validator: isNotNull,
                  textCapitalization: TextCapitalization.words,
                  labelText: "First Name:",
                ),
                VSpace.md,
                TextInputField(
                  validator: isEmail,
                  onSaved: provider.onSetEmail,
                  textCapitalization: TextCapitalization.none,
                  labelText: "Email:",
                ),
                VSpace.md,
                TextInputField(
                  controller: state.passwordController,
                  onSaved: provider.onSetPassword,
                  validator: isPassword,
                  obscureText: true,
                  labelText: "Password:",
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
                VSpace.lg,
                PElevatedbtn(
                  "Sign up",
                      isLoading: state.isLoading,
                  onTap: provider.register,
                ),
                VSpace.lg,
                VSpace.lg,
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
