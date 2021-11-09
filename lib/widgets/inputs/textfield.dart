import 'package:acumen/style/resources.dart';
import 'package:acumen/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../text.dart';

final _baseFont =
    Fonts.normalStyle.copyWith(color: AppColors.lightGray, fontSize: FontSizes.s12);

class BaseTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText, helperText;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final Widget? suffixIcon, prefixIcon;
  final String? initialValue;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool readOnly;
  final Function? onTap;

  BaseTextField({
    this.labelText,
    this.hintText,
    this.helperText,
    this.inputFormatters,
    this.readOnly = false,
    this.onTap,
    this.onSaved,
    this.validator,
    this.controller,
    this.initialValue,
    this.suffixIcon,
    this.textCapitalization,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
   
  }) : super();

  @override
  Widget build(BuildContext context) {
    final _border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );

    return TextFormField(
      controller: controller,
      inputFormatters: inputFormatters,
      readOnly: readOnly,
      onSaved: onSaved,
      validator: validator,
      initialValue: initialValue,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization?? TextCapitalization.sentences,
      obscureText: obscureText,
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      style: _baseFont.copyWith(color: Colors.black, fontSize: FontSizes.s16),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Container(
            margin: const EdgeInsets.only(top: 40, bottom: 0),
            child: Text(labelText ?? "")),
        errorStyle: _baseFont.copyWith(color: AppColors.errorColor),
        labelStyle: _baseFont,
        hintStyle: _baseFont.copyWith(fontSize: FontSizes.s16),
        helperStyle: _baseFont,
        hintText: hintText,
        isDense: true,
        contentPadding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsetsDirectional.all( 12.0),
                child: prefixIcon,
              )
            : null,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: const EdgeInsetsDirectional.all( 12.0),
                child: suffixIcon,
              )
            : null,
        filled: true,
        fillColor: AppColors.mute,
        border: _border,
        enabledBorder: _border,
        focusedBorder: _border,
        errorBorder: _border,
        focusedErrorBorder: _border,
      ),
    );
  }
}

class TextInputField extends BaseTextField {
  TextInputField({
    @required FormFieldSetter<String>? onSaved,
    String? labelText,
    String? hintText,
    String? helperText,
    String? Function(String?)? validator,
    String? initialValue,
    bool? obscureText,
    TextEditingController? controller,
    TextCapitalization? textCapitalization,
    Widget? suffixIcon,
    Widget? prefixIcon,
    TextInputType? keyboardType = TextInputType.text,
  }) : super(
            labelText: labelText,
            hintText: hintText,
            helperText: helperText,
            onSaved: onSaved,
            obscureText: obscureText ?? false,
            initialValue: initialValue,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            validator: (val) {
              if (validator != null) {
                return validator(val);
              }
            },
            keyboardType: keyboardType ?? TextInputType.text);
  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }
}
