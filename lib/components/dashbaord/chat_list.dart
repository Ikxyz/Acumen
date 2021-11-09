import 'package:acumen/components/dashbaord/chat_item.dart';
import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/widgets/index.dart';

import '../../global.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
          padding: const EdgeInsets.all(20),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                VSpace.lg,
                LargeText("Chat"),
                VSpace.md,
                TextInputField(
                    hintText: "Search...",
                    prefixIcon: ImageIcon(
                      AssetImage(
                        AppIcons.search,
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
              ],
            ),
          ),
         


Expanded(child: SingleChildScrollView(child: Column(children: [

ChatItem(imageUrl: AppImages.profilePhoto6, name: "Will Knowles", lastMsg: "Hey! How's your dog?", time: "1min", isOnline: true),
ChatItem(imageUrl: AppImages.profilePhoto5, name: "Ryan Bond", lastMsg: "Let's go out", time: "5h", isOnline: false),
ChatItem(imageUrl: AppImages.profilePhoto2, name: "Sirena Paul", lastMsg: "Hey! Long time no see", time: "1min", isOnline: true),
ChatItem(imageUrl: AppImages.profilePhoto4, name: "Matt Chapman", lastMsg: "You fed the dog?", time: "7h", isOnline: false),
ChatItem(imageUrl: AppImages.profilePhoto3, name: "Laura Pierce", lastMsg: "How are you doing", time: "7h", isOnline: false),
ChatItem(imageUrl: AppImages.profilePhoto1, name: "Hazel Reed", lastMsg: "Hey! Long time no see", time: "7h", isOnline: false),

],),))

        ],
      ),
    );
  }
}
