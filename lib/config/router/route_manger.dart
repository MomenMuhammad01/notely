import 'package:flutter/material.dart';
import 'package:notely/core/util/constants/strings_manger.dart';
import 'package:notely/features/notes/presentation/screens/home_screen.dart';

class Routes{
  static const String initialRoute = '/';
}

class AppRoutes {
  static Route? onGeneratedRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(StringsManger.noRouteFound),
        ),
      ),
    );
  }
}
