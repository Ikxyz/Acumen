import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';

import '../../global.dart';

class PFlatButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final Color? backgroundColor;
  final VoidCallback? onClick;

   const PFlatButton({Key? key, this.text,this.backgroundColor, this.onClick,this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:backgroundColor?? AppColors.baseDark,
          borderRadius: BorderRadius.circular(10),
        ),
        child:child ?? Text(
         text??"",
          style: Fonts.normalStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
