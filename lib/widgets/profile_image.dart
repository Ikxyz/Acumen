import "../global.dart";

class ProfileImage extends StatelessWidget {
  final double size;
  final String? imageUrl;

  const ProfileImage({
    this.size = 50,
    this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
if(imageUrl!=null){
  return CircleAvatar(
      radius: size,
      backgroundImage: AssetImage(imageUrl!)
    );
}

    return CircleAvatar(
      radius: size,
      child: Icon(Icons.account_circle_rounded, size: size * 2),
    );
  }
}
