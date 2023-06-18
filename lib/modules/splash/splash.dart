import 'dart:async';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:zing_z/modules/home/home_page.dart';

import '../../network/styles/themes/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.zingBackground,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width /2,
            height: size.height/5,
            margin: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: const DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('images/logo_zing.jpg')),
            ),
          ),
          const SizedBox(
            height: 25.0,
            width: 25.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(255, 153, 160, 255)),
              strokeWidth: 4.0,
            ),
          )
        ],
      )),
    );
  }
}
