import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';
import 'package:acumen/widgets/buttons/flat_button.dart';

import '../../global.dart';

class NearYouItem extends StatelessWidget {
  final String imagrUrl;
  final String park;
  final num distance;
  final num amount;

  const NearYouItem(
      {Key? key,
      required this.imagrUrl,
      required this.park,
      required this.distance,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Profile.route);
      },
      child: Container(
        width: 250,
        margin: const EdgeInsets.only(right: 50),
        constraints: BoxConstraints(maxWidth: getWidth(context, 90)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagrUrl,
                  fit: BoxFit.cover,
                  width: 250,
                )),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(park),
              subtitle: Row(
                children: [
                  ImageIcon(
                    AssetImage(AppIcons.location),
                    size: 15,
                  ),
                  Expanded(child: Text(" ${distance}km from you")),
                ],
              ),
              trailing: PFlatButton(
                text: "\$$amount/h",
                onClick: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
