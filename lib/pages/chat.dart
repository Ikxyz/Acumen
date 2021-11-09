import 'package:acumen/components/dashbaord/bubble.dart';
import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/widgets/buttons/flat_button.dart';
import 'package:acumen/widgets/flexibles/spacers.dart';
import 'package:acumen/widgets/index.dart';
import 'package:acumen/widgets/profile_image.dart';

import '../global.dart';

class Chat extends StatelessWidget {
  static const String route = "chat";
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: getWidth(context),
        height: getHeight(context),
        child: Column(
          children: [
            VSpace.lg,
            Row(
              children: [
                MBackButton(),
                Expanded(
                  child: ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 0,
                      minVerticalPadding: 0,
                      leading: ProfileImage(
                        imageUrl: AppImages.profilePhoto,
                        size: 30,
                      ),
                      title: MediumText(
                        "Alex Murray",
                        size: 18,
                      ),
                      subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 10,
                            ),
                            Text("Online")
                          ])),
                ),
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(AssetImage(AppIcons.call))),
              ],
            ),
            VSpace.md,
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SmallText(
                    "1 Apirl 12:00",
                    color: AppColors.lightGray,
                  ),
                  Bubble(text: "Hgy, Alex! Nice to meet you! I'd like to hire a walker and you're perfect one for me. Can you help me out?"),
                  Bubble(
                    text: """Hi! That's great! Let me give  you a call and we'll discuss all the details""",
                    isSender: false,
                  ),
                  SmallText(
                    "12:30",
                    color: AppColors.lightGray,
                  ),
                  Bubble(
                    text: """Okay, i'm waiting for a call""",
                  ),

                    

                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
PFlatButton(
  backgroundColor: AppColors.mute,
  child:Padding(
    padding: const EdgeInsets.all(5.0),
    child: Icon(Icons.add,color: AppColors.primary,size: 30,),
  ),),
HSpace.sm,
  Expanded(
    child: TextInputField(
                      hintText: "Aa",
                       
                      suffixIcon: ImageIcon(
                        AssetImage(
                          AppIcons.voice,
                        ),color: AppColors.baseDark,
                        size: 15,
                      ),
                      onSaved: (String? val) {}),
  ),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
