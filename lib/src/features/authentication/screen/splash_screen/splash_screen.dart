import 'package:f1/src/constants/colors.dart';
import 'package:f1/src/features/authentication/screen/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:f1/src/constants/image_string.dart';
import 'package:f1/src/constants/sizes.dart';
import 'package:f1/src/constants/text_strings.dart';
import 'package:f1/src/features/authentication/screen/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double tagLinePosition = animate ? 0 : -300; // Initial position (left of the screen)

    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: APrimaryColor,
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 44.0,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            color: Colors.black,
          ),
          titleMedium: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1500),
                curve: Curves.easeInOutCubic,
                top: animate ? 0 : -30,
                left: animate ? 0 : -30,
                child: Image(
                  image: AssetImage(ASplashScreenTop),
                ),
              ),
              Center(
                child: AnimatedOpacity(
                  opacity: animate ? 1 : 0,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOutCubic,
                  child: Image(
                    image: AssetImage(ASplashImage),
                    width: animate ? 250 : 0,
                    height: animate ? 250 : 0,
                  ),
                ),
              ),
              TweenAnimationBuilder(
                tween: Tween<double>(
                  begin: -300, // Starting position (left of the screen)
                  end: 0,    // Ending position (center)
                ),
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOutCubic,
                builder: (_, double value, child) {
                  return Positioned(
                    top: 500, // Adjust the vertical position below the splash image
                    left: 60, // Adjust the horizontal position
                    right: 0, // Adjust the horizontal position
                    child: AnimatedOpacity(
                      opacity: animate ? 1 : 0,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubic,
                      child: Text(
                        AAppTagLine,
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  OnBoardingScreen()));
  }
}