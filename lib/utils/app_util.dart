import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dynamic_widget_assignment/common/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppUtil {
  static void closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static String getTwoDigitsNumberAlways(String num) {
    if (num.length == 1) {
      return "0" + num;
    }
    return num;
  }

  static BuildContext getBuildContext() {
    return appNavigationService.myNavigatorKey.currentState!.context;
  }

  static setStatusBarColor({Color? statusBarColor}) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: statusBarColor));
  }

}
