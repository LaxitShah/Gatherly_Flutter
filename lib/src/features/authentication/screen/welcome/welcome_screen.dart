import 'package:f1/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:f1/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:f1/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:f1/src/constants/colors.dart';
import 'package:f1/src/constants/image_string.dart';
import 'package:f1/src/constants/sizes.dart';
import 'package:f1/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller=Get.put(FadeInAnimationController());
    controller.startAnimation();

    final currentTheme = Theme.of(context);
    // Determine text color based on theme brightness
    final textColor = currentTheme.brightness == Brightness.dark
        ? Colors.white // Use white text for dark theme
        : Colors.black; // Use black text for light theme

    var mediaQuery= MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness= mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : APrimaryColor,
      body: Stack(
        children: [
          AFadeInAnimation(
            durationInMs: 1500,
            animatePosition:AAnimationPosition(
              topBefore: -30,
              topAfter: 0,
              leftBefore: -30,
              leftAfter: 0,
              bottomBefore: -30,
              bottomAfter: 0,
              rightBefore: -30,
              rightAfter: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(ADefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(AWelcomeScreenImage), height: height * 0.5),
                  Column(
                    children: [
                      Text(
                        AWelcomeScreenTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32.0,
                          color: textColor, // Use the headline1 text color
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        AWelcomeScreenSubTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: textColor // Use the headline2 text color
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(ALogin.toUpperCase()),
                        ),
                      ),
                      const SizedBox(width:10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(ASignUp.toUpperCase()),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
