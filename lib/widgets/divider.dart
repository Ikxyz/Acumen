import "package:flutter/material.dart";

class Divider extends StatelessWidget {
  const Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 2,
      color: Colors.black,
    );
  }
}