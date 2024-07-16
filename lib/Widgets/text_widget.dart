import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
        required this.text,
        required this.fontSize,
        this.maxLines,
        required this.fontWeight,
        required this.isTextCenter,
        required this.textColor});
  final String text;
  final double fontSize;
  final int? maxLines;
  final FontWeight fontWeight;
  final Color textColor;
  final bool isTextCenter;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
        text,
      textAlign: isTextCenter == true ? TextAlign.center: TextAlign.justify,
      maxLines: maxLines,
      style: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: textColor,),
    );
  }
}
