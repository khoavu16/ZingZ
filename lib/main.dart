import 'package:flutter/material.dart';
import 'package:zing_z/modules/home/home_page.dart';
import 'package:zing_z/modules/splash/splash.dart';
// import 'modules/splash/splash.dart';
import 'network/styles/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'montserrat',
        // scaffoldBackgroundColor: const Color(0xff131e30),
        scaffoldBackgroundColor: AppColors.zingBackground,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      home: const SplashPage(),
    );
  }
}
