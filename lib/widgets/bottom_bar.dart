import 'package:fast_food_app/providers/bottom_bar_provider.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.currentScreenIndex,
    required this.screenIndexProvider,
  }) : super(key: key);

  final int currentScreenIndex;
  final BottomNavigationBarProvider screenIndexProvider;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentScreenIndex,
      onTap: (value) => screenIndexProvider.updateScreenIndex(value),
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
              (currentScreenIndex == 0) ? Icons.home : Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Orders',
          icon: Icon((currentScreenIndex == 1)
              ? Icons.food_bank
              : Icons.food_bank_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Users',
          icon: Icon((currentScreenIndex == 2)
              ? Icons.supervised_user_circle
              : Icons.supervised_user_circle_outlined),
        ),
      ],
    );
  }
}
