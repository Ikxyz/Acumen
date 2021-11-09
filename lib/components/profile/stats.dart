import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';

import '../../global.dart';

class Stats extends StatelessWidget {
  final String val;
  final String type;
  final Widget? icon;
  const Stats({Key? key, required this.val, required this.type, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(text: TextSpan(
          children: [
            TextSpan(text: val,style: TextStyles.caption.copyWith(color: Colors.black)),
            if(icon==null)
            TextSpan(text: type,style: TextStyles.caption.copyWith(color: AppColors.lightGray)),
          ]
        )),
        if(icon!=null)
        icon!
      ],
    );
  }
}
