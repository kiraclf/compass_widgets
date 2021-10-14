import 'package:flutter/material.dart';

/// Compass 常用的圆角Button
///
/// 如果不提供 [height], 默认的高度为 48
///
/// 如果不提供 [textStyle], 默认的style 为 `TextStyle(fontSize: 20, fontWeight: FontWeight.bold)`
/// 
/// 默认 [widthExpand] = true
class CompassRoundedButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final bool widthExpand;
  final void Function()? onTap;
  final bool showBorder;
  final Color borderColor;
  CompassRoundedButton(
      {required this.title,
      this.height,
      this.backgroundColor,
      this.widthExpand = true,
      this.width,
      this.onTap,
      this.showBorder = false,
      this.borderColor = Colors.blue,
      this.textStyle});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          title,
          style:
              textStyle ?? TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(
                side: showBorder
                    ? BorderSide(width: 1, color: borderColor)
                    : BorderSide.none),
            elevation: 1,
            primary: backgroundColor),
      ),
      constraints: widthExpand
          ? BoxConstraints.expand(height: height ?? 48)
          : BoxConstraints.tightFor(height: height ?? 48, width: width),
    );
  }
}
