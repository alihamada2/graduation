// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:graduation/view/screens/Welcome_page.dart';
import 'package:graduation/view/screens/auth/Login_page.dart';

class AppRoutes {
  static const welcome = Routes.WelcomeScreen;
  static final routes = [
    GetPage(
      name: Routes.WelcomeScreen,
      page: () => const WelcomePage(),
    ),
      GetPage(
      name: Routes.LoginScreen,
      page: () =>   LoginScreen(),
    )
  ];
}

class Routes {
  static const WelcomeScreen = '/WelcomeScreen';
  static const LoginScreen = '/LoginScreen';
}
