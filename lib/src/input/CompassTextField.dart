import 'package:flutter/material.dart';

/// Compass 常用的输入框.
class CompassTextField extends StatelessWidget {
  final int? maxLines;
  final String? placeHolder;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChange;
  final TextStyle? placeHolderTextStyle;
  final TextStyle? textTextStyle;
  final Color? backgroundColor;
  final double cornerRadius;
  final bool isSecure;
  final EdgeInsets? contentPadding;
  CompassTextField(
      {this.maxLines,
      this.placeHolder,
      this.onChange,
      Key? key,
      this.placeHolderTextStyle,
      this.textTextStyle,
      this.backgroundColor,
      this.cornerRadius = 0,
      this.isSecure = false,
      this.controller,
      this.contentPadding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: this.maxLines ?? null,
      onChanged: onChange,
      style: textTextStyle,
      obscureText: isSecure,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        contentPadding: contentPadding,
        hintText: placeHolder,
        hintStyle: placeHolderTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(cornerRadius),
          ),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        fillColor: backgroundColor,
      ),
    );
  }
}
