import 'package:fast_food_app/app_themes.dart';
import 'package:fast_food_app/providers/bottom_bar_provider.dart';
import 'package:fast_food_app/routes/app_router.dart';
import 'package:fast_food_app/screens/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BottomNavigationBarProvider(),
          lazy: false,
        )
      ],
      child: const FastFoodApp(),
    );
  }
}

class FastFoodApp extends StatelessWidget {
  const FastFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Food App',
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getAppRouter(),
      theme: AppTheme.lightTheme,
    );
  }
}
