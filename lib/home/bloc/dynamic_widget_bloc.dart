import 'dart:convert';

import 'package:dynamic_widget_assignment/common/logger/app_logger.dart';
import 'package:dynamic_widget_assignment/common/network/service/status.dart';
import 'package:dynamic_widget_assignment/common/services/navigation_service.dart';
import 'package:dynamic_widget_assignment/home/network/api_provider.dart';
import 'package:dynamic_widget_assignment/home/network/model/dynamic_widget_res_model.dart';
import 'package:dynamic_widget_assignment/home/view/dynamic_widget_renderer.dart';
import 'package:dynamic_widget_assignment/utils/common_widgets/custom_theme.dart';
import 'package:rxdart/rxdart.dart';

class DynamicWidgetBloc {
  DynamicWidgetModel? dynamicWidgetModel;
  bool? theme = false;

  BehaviorSubject<bool> _loadingController =
      BehaviorSubject<bool>.seeded(false);

  BehaviorSubject<bool> get loadingController => _loadingController;

  void changeTheme(MyThemeKeys key) {
    CustomTheme.instanceOf(appNavigationService.currentContext)
        .changeTheme(key);
  }

  Future<void> homeDynamicWidgetApi() async {
    _loadingController.add(true);
    final resp = await DynamicWidgetHomeAPIProvider().homeDynamicWidgetApi();
    if (resp.status == ApiStatus.SUCCESS) {
      dynamicWidgetModel =
          DynamicWidgetModel.fromJson(json.decode(resp.data.toString()));
      DynamicWidgetRenderer.renderAppTheme(
          theme: dynamicWidgetModel?.appTheme?.type);
      _loadingController.add(false);
    }
  }
}

final dynamicWidgetBloc = DynamicWidgetBloc();
