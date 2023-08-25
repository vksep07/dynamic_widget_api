import 'package:dynamic_widget_assignment/home/bloc/dynamic_widget_bloc.dart';
import 'package:dynamic_widget_assignment/home/network/model/dynamic_horizontal_list_data_model.dart';
import 'package:dynamic_widget_assignment/home/network/model/dynamic_widget_data_model.dart';
import 'package:dynamic_widget_assignment/home/view/banner_item_widget.dart';
import 'package:dynamic_widget_assignment/home/view/banner_widget.dart';
import 'package:dynamic_widget_assignment/home/view/horizontal_list_widget.dart';
import 'package:dynamic_widget_assignment/utils/common_widgets/custom_theme.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class DynamicWidgetRenderer {
  static Widget render(Map<String, dynamic> json) {
    final dynamicData = DynamicWidgetData.fromJson(json);

    switch (dynamicData.type.toUpperCase()) {
      case BANNER:
        List<Map<String, dynamic>> convertedList = List<Map<String, dynamic>>.from(dynamicData.properties);
        return _renderBannerWidget(convertedList);
      case DYNAMIC_HORIZONTAL_LIST:
        return _renderHorizontalListWidget(dynamicData.properties);
      default:
        throw Exception('Unsupported widget type: ${dynamicData.type}');
    }
  }

  static Widget _renderBannerWidget(List<Map<String, dynamic>> properties) {
    return BannerWidget(
      properties: properties,
    );
  }

  static void renderAppTheme({String? theme }) {
    if (theme == MyThemes.LIGHT) {
      dynamicWidgetBloc.theme=false;
      dynamicWidgetBloc.changeTheme(MyThemeKeys.LIGHT);
    } else {
      dynamicWidgetBloc.theme=true;
      dynamicWidgetBloc.changeTheme(MyThemeKeys.DARK);
    }
  }

  static Widget _renderHorizontalListWidget(Map<String, dynamic> properties) {
    final horizontalListData = DynamicHorizontalListData.fromJson(properties);
    return HorizontalListWidget(horizontalListData: horizontalListData);
  }
}
