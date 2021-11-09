import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';

import '../../global.dart';

final _baseFont = Fonts.normalStyle.copyWith(color: AppColors.lightGray);

class Bio extends StatelessWidget {
  final String text;
  const Bio({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: text, style: _baseFont),
      TextSpan(
          text: "\nRead more",
          style:_baseFont.copyWith(color: AppColors.primary)),
    ]));
  }
}
