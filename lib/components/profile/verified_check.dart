import 'package:acumen/style/resources.dart';

import '../../global.dart';

class VerifiedCheck extends StatelessWidget {
  const VerifiedCheck({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xFFC4C4C4).withOpacity(0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(children: [
        MediumText("Verified",color: Colors.white,),
        ImageIcon(AssetImage(AppIcons.tick),color: Colors.white,)
      ],),
    );
  }
}