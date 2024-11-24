import 'package:dotteddemo/screens/home_desktop_screen.dart';
import 'package:dotteddemo/screens/home_mobile_screen.dart';
import 'package:dotteddemo/screens/home_tablet_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Media query
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1400,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (size.width >= 1100)
                  const HomeDesktopScreen()
                else if (size.width >= 650 && size.width < 1100)
                  const HomeTabletScreen()
                else
                  const HomeMobileScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
