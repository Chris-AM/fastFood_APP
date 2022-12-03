import 'package:fast_food_app/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initialRoute = 'scaffold';

  static Map<String, Widget Function(BuildContext)> getAppRouter() {
    Map<String, Widget Function(BuildContext)> appRouter = {};
    appRouter.addAll({
      'scaffold': (BuildContext context) => ScaffoldScreen(),
    });
    return appRouter;
  }
}
