import 'package:dynamic_widget_assignment/common/routes/routes.dart';
import 'package:dynamic_widget_assignment/common/services/navigation_service.dart';
import 'package:dynamic_widget_assignment/utils/common_util/utils_importer.dart';
import 'package:dynamic_widget_assignment/utils/common_widgets/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: false,
      navigatorKey: appNavigationService.myNavigatorKey,
      theme: CustomTheme.of(context),
      title: UtilsImporter().stringUtils.appName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.getGeneratedRoute,
      initialRoute: Routes.splash,
    );
  }
}
