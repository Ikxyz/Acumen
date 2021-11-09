import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';
import 'package:acumen/widgets/profile_image.dart';

import '../../global.dart';

class Bubble extends StatelessWidget {
  final String text;
  final bool isSender;
  const Bubble({Key? key, required this.text, this.isSender = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
          width: getWidth(context, 60),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: isSender ? AppColors.primary : AppColors.mute,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(isSender ? 20 : 0),
                bottomRight: Radius.circular(isSender ? 0 : 20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Text(text,
              style: Fonts.normalStyle.copyWith(
                color: isSender ? Colors.white : Colors.black,
              ))),
    );
  }
}
