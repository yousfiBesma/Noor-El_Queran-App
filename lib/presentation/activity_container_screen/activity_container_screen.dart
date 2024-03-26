import 'package:parent/presentation/activity_page/activity_page.dart';
import 'package:parent/presentation/map_page/map_page.dart';
import 'package:parent/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ActivityContainerScreen extends StatelessWidget {
  ActivityContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.activityPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Activity:
        return AppRoutes.activityPage;
      case BottomBarEnum.Map:
        return AppRoutes.mapPage;
      case BottomBarEnum.Compte:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.activityPage:
        return ActivityPage();
      case AppRoutes.mapPage:
        return MapPage();
      default:
        return DefaultWidget();
    }
  }
}
