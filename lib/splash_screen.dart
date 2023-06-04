import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sodateru_kakeibo/color_table.dart';
import 'package:sodateru_kakeibo/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Home();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const double begin = 0.0;
            const double end = 1.0;
            final Animatable<double> tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));
            final Animation<double> doubleAnimation = animation.drive(tween);
            return FadeTransition(
              opacity: doubleAnimation,
              child: child,
            );
          },
          transitionDuration: const Duration(seconds: 1),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        color: ColorTable.primaryWhiteColor,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "育てる家計簿",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: ColorTable.primaryBlackColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Image.asset(
                "lib/assets/images/logo.png",
                width: MediaQuery.of(context).size.width / 3,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
