import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';
import 'package:acumen/widgets/index.dart';
import 'package:acumen/widgets/onboarding/pagination_indicator.dart';
import 'package:acumen/widgets/text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:shared_preferences/shared_preferences.dart";

import "../global.dart";
import "../style/index.dart";

 
class Onboarding extends StatelessWidget {
  

  static String route = "/onboarding";

  Onboarding({Key? key}) : super(key: key);
 

  _OnboardingState() {
    updateFirstRun();
  }

  void updateFirstRun() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(LOCAL_FIRST_RUN_KEY, false);
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const _Layer1(),
        const _Layer2(),
        const _Layer3(),
        const _Layer4(),
      ],
    ));
  }
}

class _Layer1 extends StatelessWidget {
  const _Layer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 20, left: 0, right: 0, child: Image.asset(AppImages.onboarding));
  }
}

class _Layer2 extends StatelessWidget {
  const _Layer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
            0.03,
            0.15,
            0.3,
            0.7
          ],
              colors: [
            AppColors.baseLight.withAlpha(50),
            AppColors.warning.withAlpha(20),
            AppColors.grey.withAlpha(90),
            AppColors.dark
          ])),
    );
  }
}

class _Layer3 extends StatelessWidget {
  const _Layer3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      left: 20,
      child: Image.asset(
        AppImages.logo,
        width: 100,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}

class _Layer4 extends StatefulWidget {
  const _Layer4({Key? key}) : super(key: key);

  @override
  State<_Layer4> createState() => _Layer4State();
}

class _Layer4State extends State<_Layer4> {

  late final TapGestureRecognizer onSignInTextClick;


  void onJoinOutCommunityButtonClick(BuildContext context) {
    Navigator.of(context).pushNamed(Register.route);
  }


@override
void initState() {
  super.initState();
    onSignInTextClick = TapGestureRecognizer();
    onSignInTextClick.onTap = () {
      Navigator.of(context).pushNamed(Login.route);
    };
}

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: getHeight(context, 5),
        child: SizedBox(
          width: getWidth(context),
          child: Column(children: [
            PaginationIndicator(),
            VSpace.md,
            BigText("Too tired to walk your dog?", color: AppColors.baseLight),
            BigText("Let's help you!", color: AppColors.baseLight),
            VSpace.md,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: PElevatedbtn("Join our community", onTap: () {
                onJoinOutCommunityButtonClick(context);
              }),
            ),
            VSpace.md,
            RichText(
                text: TextSpan(
                    style: TextStyles.caption
                        .copyWith(fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(text: "Already a member? "),
                  TextSpan(
                      text: "Sign In? ",
                      recognizer: onSignInTextClick,
                      style: TextStyles.caption.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold))
                ]))
          ]),
        ));
  }
}
