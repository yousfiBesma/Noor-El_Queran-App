import 'package:flutter/material.dart';
import '../presentation/welcome_screen/welcome_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/send_code_screen/send_code_screen.dart';
import '../presentation/activity_container_screen/activity_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String sendCodeScreen = '/send_code_screen';

  static const String mapPage = '/map_page';

  static const String activityPage = '/activity_page';

  static const String activityContainerScreen = '/activity_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    signUpScreen: (context) => SignUpScreen(),
    sendCodeScreen: (context) => SendCodeScreen(),
    activityContainerScreen: (context) => ActivityContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
