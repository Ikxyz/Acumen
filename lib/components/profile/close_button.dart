import '../../global.dart';

class CircularCloseButton extends StatelessWidget {
  const CircularCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xFFC4C4C4).withOpacity(0.7),
            borderRadius: BorderRadius.circular(50)),
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
    );
  }
}
