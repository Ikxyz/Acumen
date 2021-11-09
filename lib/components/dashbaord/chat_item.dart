import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/widgets/profile_image.dart';

import '../../global.dart';

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastMsg;
  final String time;
  final bool isOnline;

  const ChatItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.lastMsg,
    required this.time,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Chat.route);
      },
      child: Column(
        children: [
          VDividers(getWidth(context)),
          Container(
            child: ListTile(
              leading: ProfileImage(
                size: 30,
                imageUrl: imageUrl,
              ),
              title: MediumText(
                name,
                size: 18,
              ),
              subtitle: Row(
                children: [
                  Text(lastMsg),
                  VSpace.sm,
                  Text(time),
                ],
              ),
              trailing: isOnline
                  ? Icon(
                      Icons.circle,
                      color: AppColors.primary,
                      size: 10,
                    )
                  : Offstage(),
            ),
          ),
        ],
      ),
    );
  }
}
