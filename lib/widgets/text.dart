import 'package:acumen/global.dart';
import 'package:flutter/material.dart';

import 'package:acumen/style/styles.dart';

class _TextPrams {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  final TextAlign? align;
  _TextPrams(
    this.text, {
    this.color,
    this.fontWeight,
    this.size,
    this.align,
  });
}

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  final TextAlign? align;

  SmallText(this.text, {this.size, this.color, this.align, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.caption.copyWith(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
      textAlign: align,
    );
  }
}

class MediumText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  final TextAlign? align;

  MediumText(this.text, {this.size, this.color, this.align, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.h3.copyWith(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
      textAlign: align,
    );
  }
}

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  final TextAlign? align;

  BigText(this.text,
      {this.size, this.color, this.align, this.fontWeight, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.h2.copyWith(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
      textAlign: align,
    );
  }
}

class LinkText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  final TextAlign? align;
  final VoidCallback? onClick;

  LinkText(this.text,
      {this.size=16, this.color, this.align, this.fontWeight,this.onClick, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Text(
        text,
        
        style: Fonts.normalStyle.copyWith(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          decoration: TextDecoration.underline,
        ),
        textAlign: align,
      ),
    );
  }
}

class LargeText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  final TextAlign? align;

  LargeText(this.text, {this.size=36, this.color, this.align, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.h1.copyWith(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
      textAlign: align,
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  final TextAlign? align;
  final bool isRequired;

  LabelText(this.text,
      {this.isRequired = true,
      this.align = TextAlign.left,
      this.size,
      this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: text),
          if (isRequired)
            TextSpan(
              text: " *",
              style: TextStyles.body1.copyWith(
                color: Colors.red,
              ),
            ),
        ],
      ),
      style: TextStyles.body1,
    );
  }
}
