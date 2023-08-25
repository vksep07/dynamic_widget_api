
import 'package:dynamic_widget_assignment/common/routes/routes.dart';
import 'package:dynamic_widget_assignment/common/services/navigation_service.dart';

class SplashBloc {
  redirectToHomeScreen() {
    Future.delayed(const Duration(seconds: 3), () async {
     appNavigationService.pushReplacementNamed(Routes.home_screen);
    });
  }
}

final splashBloc = SplashBloc();
