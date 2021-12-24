import 'package:flutter/material.dart';
import '/core/core.dart';

const double borderRadius = 10.0;

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.width,
    this.backgroundColor,
    this.foregroundColor,
    required this.buttonText,
    required this.onPressedCallback,
  }) : super(key: key);

  final double? width;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String buttonText;
  final Function() onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48.0,
      child: ElevatedButton(
        onPressed: onPressedCallback,
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all<Color>(foregroundColor ?? Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor ?? context.colors.primary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(borderRadius),
              ),
              side: BorderSide(
                color: context.colors.primary,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16.0,
            color: foregroundColor ?? Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
