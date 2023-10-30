import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_strings.dart';
import '../../models/model_on_boarding.dart';
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:const EdgeInsets.all(20.0),
        color:model.bgColor,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(model.image),
              height: model.height*0.41,

            ),
            Column(
              children: [
                Text(model.title,
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.lightGreen, // Set the text color to black
                  ),
                ),
                SizedBox(height: 16),
                Text(model.subTitle,
                  style: TextStyle(
                    fontSize: 27.0,
                    color: Colors.lightGreenAccent, // Set the text color to black

                  ),
                ),
              ],
            ),
            Text(model.counterText,
              textAlign:TextAlign.right,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.lightGreenAccent, // Set the text color to black
              ),
            ),
            const SizedBox(height: 80.0),
          ],
        )
    );
  }
}