import 'package:acumen/style/styles.dart';
import 'package:flutter/cupertino.dart';

import '../../global.dart';

class Space extends StatelessWidget {
  final double width;
  final double height;

  Space(this.width, this.height);

  @override
  Widget build(BuildContext context) => SizedBox(width: width, height: height);
}

class VSpace extends StatelessWidget {
  final double size;

  const VSpace(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Space(0, size);

  static VSpace get xs => VSpace(Insets.xs);
  static VSpace get sm => VSpace(Insets.sm);
  static VSpace get md => VSpace(Insets.md);
  static VSpace get lg => VSpace(Insets.lg);
  static VSpace get bottom =>
      VSpace(Insets.lg * 3); // bottom offset usually in  a list
}

class HSpace extends StatelessWidget {
  final double size;

  const HSpace(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Space(size, 0);

  static HSpace get xs => HSpace(Insets.xs);
  static HSpace get sm => HSpace(Insets.sm);
  static HSpace get md => HSpace(Insets.md);
  static HSpace get lg => HSpace(Insets.lg);
}

class HDividers extends StatelessWidget {
  final double size;
  const HDividers(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RotatedBox(
      quarterTurns: 1,
      child: SizedBox(
          width: size,
          child: Divider(
            thickness: 1.5,
          )));

  static HDividers get xs => HDividers(Insets.xs);
  static HDividers get sm => HDividers(Insets.sm);
  static HDividers get md => HDividers(Insets.md);
  static HDividers get lg => HDividers(Insets.lg);
}


class VDividers extends StatelessWidget {
  final double size;
  const VDividers(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
      width: size,
      child: Divider(
        thickness: 1.5,
      ));

  static VDividers get xs => VDividers(Insets.xs);
  static VDividers get sm => VDividers(Insets.sm);
  static VDividers get md => VDividers(Insets.md);
  static VDividers get lg => VDividers(Insets.lg);
}
