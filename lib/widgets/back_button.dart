import 'package:acumen/style/resources.dart';

import "../../global.dart";

const defaultIcon = Icons.arrow_back;

class MBackButton extends StatelessWidget {
  final Color? color;
  final IconData icon;

  const MBackButton({Key? key, this.color, this.icon = defaultIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10,top: 10,right: 10),
          child: Image.asset(
            AppIcons.backButton,
            filterQuality: FilterQuality.high,
          ),
        ));
  }
}
