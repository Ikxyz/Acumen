import 'package:acumen/components/profile/bio.dart';
import 'package:acumen/components/profile/close_button.dart';
import 'package:acumen/components/profile/experiences.dart';
import 'package:acumen/components/profile/stats.dart';
import 'package:acumen/components/profile/verified_check.dart';
import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';
import 'package:acumen/widgets/buttons/flat_button.dart';
import 'package:acumen/widgets/flexibles/spacers.dart';
import 'package:acumen/widgets/index.dart';

import "../global.dart";

class Profile extends StatelessWidget {
  static const String route = "profile";

  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: getHeight(context),
      child: Stack(
        children: [
          _Layer1(),
          _Layer2(),
          _Layer3(),
        ],
      ),
    ));
  }
}

class _Layer1 extends StatelessWidget {
  const _Layer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50,
      child: Container(
          width: getWidth(context),
          height: getHeight(context, 70),
          child: Image.asset(
            AppImages.profilePhoto,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
          )),
    );
  }
}


class _Layer2 extends StatelessWidget {
  const _Layer2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: getWidth(context),
        child: Row(children: [
   
   
    CircularCloseButton(),
 Spacer(),
     VerifiedCheck(),
        ],),
      ),
    );
  }
}


class _Layer3 extends StatelessWidget {
  const _Layer3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
          padding: const EdgeInsets.all(20),
          width: getWidth(context),
          height: getHeight(context, 55),
          decoration: BoxDecoration(
              color: AppColors.mute,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                VSpace.md,
                BigText("Alex Murray"),
                VSpace.md,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Spacer(),
                    Stats(val: r"5$", type: "/hr"),
                    HSpace.sm,
                    HDividers.md,
                    HSpace.sm,
                    Stats(val: "10 ", type: "km"),
                    HSpace.sm,
                    HDividers.md,
                    HSpace.sm,
                    Stats(
                        val: "4.4",
                        type: "",
                        icon: Icon(
                          Icons.star,
                          size: 15,
                          color: AppColors.lightGray,
                        )),
                    HSpace.sm,
                    HDividers.md,
                    HSpace.sm,
                    Stats(val: "450 ", type: "walks"),
                    Spacer()
                  ],
                ),
                VSpace.md,
                VDividers(getWidth(context)),
                VSpace.md,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PFlatButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: MediumText(
                          "About",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    PFlatButton(
                      backgroundColor: AppColors.mute,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child:
                            MediumText("Location", color: AppColors.lightGray),
                      ),
                    ),
                    PFlatButton(
                      backgroundColor: AppColors.mute,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child:
                            MediumText("Reviews", color: AppColors.lightGray2),
                      ),
                    ),
                  ],
                ),
                VSpace.lg,
                Experiences(),
                VSpace.lg,
                Bio(
                  text:
                      "Alex has loved dogs since childhood. He is currtly a veterinary student. Vissts the dog shelter we...",
                ),
                VSpace.lg,
                PElevatedbtn("Check schedule", onTap: () {})
              ],
            ),
          )),
    );
  }
}
