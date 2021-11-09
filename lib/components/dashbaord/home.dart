import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';

import '../../global.dart';
import 'near_you_item.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                VSpace.lg,
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        LargeText("Home"),
                        Text("Explore dog walkers",
                            style: Fonts.normalStyle.copyWith(
                                color: AppColors.lightGray,
                                fontSize: FontSizes.s18))
                      ],
                    ),
                    Spacer(),
                    PElevatedbtn("",
                        width: 140,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Icon(Icons.add), SmallText("Book a walk")],
                        ),
                        onTap: () {})
                  ],
                ),
                TextInputField(
                    hintText: "kiyv, Ukraine",
                    prefixIcon: ImageIcon(
                      AssetImage(
                        AppIcons.location,
                      ),
                      size: 20,
                    ),
                    suffixIcon: ImageIcon(
                      AssetImage(
                        AppIcons.filter,
                      ),
                      size: 15,
                    ),
                    onSaved: (String? val) {}),
                VSpace.lg,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LargeText("Near you"),
                    Spacer(),
                    LinkText(
                      "View all",
                    )
                  ],
                ),
                VSpace.md,
                SizedBox(
                  width: getWidth(context),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        NearYouItem(
                          park: "Mason York",
                          amount: 3,
                          distance: 7,
                          imagrUrl: AppImages.dog1,
                        ),
                        NearYouItem(
                          park: "Mark Greene",
                          amount: 5,
                          distance: 14,
                          imagrUrl: AppImages.dog2,
                        ),
                        NearYouItem(
                          park: "Mason York",
                          amount: 10,
                          distance: 18,
                          imagrUrl: AppImages.dog3,
                        ),
                      ],
                    ),
                  ),
                ),
                VSpace.sm,
                Divider(thickness: 1.5,),
                VSpace.sm,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LargeText("Suggested"),
                    Spacer(),
                    LinkText(
                      "View all",
                    )
                  ],
                ),
                VSpace.md,
                SizedBox(
                  width: getWidth(context),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        NearYouItem(
                          park: "Mason York",
                          amount: 10,
                          distance: 18,
                          imagrUrl: AppImages.dog3,
                        ),
                        NearYouItem(
                          park: "Mark Greene",
                          amount: 5,
                          distance: 14,
                          imagrUrl: AppImages.dog2,
                        ),
                        NearYouItem(
                          park: "Mason York",
                          amount: 3,
                          distance: 7,
                          imagrUrl: AppImages.dog1,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
  }
}