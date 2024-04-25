import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/community_screen/community_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/page_five_screen/page_five_screen.dart';
import '../presentation/page_four_screen/page_four_screen.dart';
import '../presentation/page_three_screen/page_three_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String pageFiveScreen = '/page_five_screen';

  static const String pageThreeScreen = '/page_three_screen';

  static const String pageFourScreen = '/page_four_screen';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String communityScreen = '/community_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    pageFiveScreen: (context) => PageFiveScreen(),
    pageThreeScreen: (context) => PageThreeScreen(),
    pageFourScreen: (context) => PageFourScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    communityScreen: (context) => CommunityScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => PageFiveScreen()
  };
}
