import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'utils/constants/color.dart';
import 'views/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.quaternary,
      body: Center(
        child: SvgPicture.asset(
          'assets/icons/chat-wing-logo.svg',
          width: 250,
        ),
      ),
    );
  }
}
