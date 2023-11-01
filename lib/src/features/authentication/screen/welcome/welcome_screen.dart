import 'package:f1/src/constants/colors.dart';
import 'package:f1/src/constants/image_string.dart';
import 'package:f1/src/constants/sizes.dart';
import 'package:f1/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Container(
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
    );
  }
}
