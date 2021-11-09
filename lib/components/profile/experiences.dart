import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';
import 'package:acumen/widgets/index.dart';

import '../../global.dart';


final keyFont =Fonts.normalStyle
                    .copyWith(color: AppColors.lightGray, fontSize: 16);

                    final valueFount = Fonts.normalStyle.copyWith(fontSize: 18);

class Experiences extends StatelessWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Age",
                style: keyFont,),
            Text("30 years", style: valueFount),
          ],
        ),
        HSpace.lg,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Experience",
                style: keyFont,),
            Text("11 months", style: valueFount),
          ],
        ),
      ],
    );
  }
}
