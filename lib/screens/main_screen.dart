import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weltra_app/screens/food_list_screen.dart';
import 'package:weltra_app/screens/home_screen.dart';
import 'package:weltra_app/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget? _screen;

  @override
  void initState() {
    _screen = const HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        shadowColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.amber,
        ),
      ),
      body: _screen,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
            icon: Icons.fastfood,
          ),
          FluidNavBarIcon(
            icon: Icons.bar_chart_sharp,
          ),
          FluidNavBarIcon(
            icon: Icons.person,
          ),
        ],
        style: const FluidNavBarStyle(
          iconUnselectedForegroundColor: Colors.black,
          barBackgroundColor: Colors.amber,
        ),
        animationFactor: 0.5,
        defaultIndex: 1,
        onChange: _changeScreen,
      ),
    );
  }

  void _changeScreen(int index) {
    setState(() {
      switch (index) {
        case 0:
          _screen = const FoodListScreen();
          break;
        case 1:
          _screen = const HomeScreen();
          break;
        case 2:
          _screen = const ProfileScreen();
          break;
      }
      _screen = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        child: _screen,
      );
    });
  }
}
