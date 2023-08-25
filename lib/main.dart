import 'package:dynamic_widget_assignment/app/app.dart';
import 'package:dynamic_widget_assignment/utils/common_widgets/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CustomTheme(
    initialThemeKey: MyThemeKeys.LIGHT,
    child: App(),
  ),);
}


