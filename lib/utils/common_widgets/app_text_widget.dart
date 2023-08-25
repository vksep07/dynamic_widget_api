import 'package:dynamic_widget_assignment/utils/app_config.dart';
import 'package:dynamic_widget_assignment/utils/common_util/utils_importer.dart';
import 'package:flutter/material.dart';

class AppTextWidget extends StatelessWidget {
   String? text;
   double? size;
   FontWeight? fontWeight;
   Color? color;
   double? wordSpacing;
   VoidCallback? onClick;

   AppTextWidget({
    @required this.text,
    this.size,
    this.fontWeight,
    this.color,
    this.wordSpacing,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: onClick == null
          ? Text(
        text ?? "",
        style: TextStyle(
          fontSize: size ?? appConfig.defaultTextSize,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ,
          wordSpacing: wordSpacing ?? appConfig.defaultWordspacing,
        ),
      )
          : TextButton(
        onPressed: () {
          onClick?.call();
        },
        child: Text(
          text ?? "",
          style: TextStyle(
            fontSize: size ?? appConfig.defaultTextSize,
            fontWeight: fontWeight ?? FontWeight.normal,
            color: color ,
            wordSpacing: wordSpacing ?? appConfig.defaultWordspacing,
          ),
        ),
      ),
    );
  }
}