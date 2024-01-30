import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'splash_screen.dart';
import 'utils/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Appcolor.primary,
              surfaceTintColor: Colors.transparent,
              shadowColor: Appcolor.tertiory.withOpacity(0.7),
              elevation: 5,
              centerTitle: true,
            ),
            primaryColor: Appcolor.primary, // Example primary color
            hintColor: Appcolor.tertiory, // Example secondary color
            scaffoldBackgroundColor:
                Appcolor.background, // Example background color
            // Set background color
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
