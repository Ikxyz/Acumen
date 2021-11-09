import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';
import 'package:flutter/material.dart';

/// primary elevated button
class PElevatedbtn extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final double? width;
  final bool isLoading;

  /// if child is not we, we want to use it instead of the label
  final Widget? child;
  PElevatedbtn(this.label, {required this.onTap,this.isLoading=false, this.child, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width ?? getWidth(context),
        height: 55,
        child: ElevatedButton(
          onPressed: isLoading?null: onTap,
          child: Ink(
            decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              alignment: Alignment.center,
              child: isLoading?CircularProgressIndicator(strokeWidth: 2,):   child ?? Text(label),
            ),
          ),
        ));
  }
}

/// secondary elevated button
class SElevatedbtn extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  /// if child is not we, we want to use it instead of the label
  final Widget? child;
  final Color? color;
  SElevatedbtn(this.label, {this.color, required this.onTap, this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onTap,
      style: ElevatedButton.styleFrom(
        primary: color ?? AppColors.grey,
      ),
      child: Ink(
        decoration: BoxDecoration(
            gradient: AppColors.primaryGradient,
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: 300,
          height: 100,
          alignment: Alignment.center,
          child: child ?? Text(label),
        ),
      ),
    );
  }
}
