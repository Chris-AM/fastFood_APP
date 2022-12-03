import 'package:fast_food_app/providers/bottom_bar_provider.dart';
import 'package:fast_food_app/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screens/screens.dart';
import 'package:provider/provider.dart';

class ScaffoldScreen extends StatelessWidget {
  final List<dynamic> pageList = [
    const HomeScreen(),
    const OrdersScreen(),
    const UserProfileScreen(),
  ];

  ScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenIndexProvider =
        Provider.of<BottomNavigationBarProvider>(context);
    int currentScreenIndex = screenIndexProvider.fetchCurrentScreen;
    return Scaffold(
      bottomNavigationBar: BottomBar(
        currentScreenIndex: currentScreenIndex,
        screenIndexProvider: screenIndexProvider,
      ),
      body: pageList[currentScreenIndex],
    );
  }
}
