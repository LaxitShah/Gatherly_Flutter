import 'package:f1/src/constants/image_string.dart';
import 'package:f1/src/constants/text_strings.dart';
import 'package:f1/src/features/authentication/models/model_on_boarding.dart';
import 'package:f1/src/features/authentication/screen/on_boarding/on_boarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../../constants/colors.dart';

class OnBoardingScreen extends StatelessWidget
{
  const OnBoardingScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context)
  {
    final size=MediaQuery.of(context).size;

    final pages=[
      OnBoardingPage(model: OnBoardingModel(
        title: AOnBoardingTitle1,
        subTitle: AOnBoardingSubTitle1,
        counterText: AOnBoardingCounter1,
        bgColor: AOnBoardingPage1Color,
        image: 'assets/images/onboarding1.png',
        height: size.height,
      )
      ),
      OnBoardingPage(model: OnBoardingModel(
title: AOnBoardingTitle2,
        subTitle: AOnBoardingSubTitle2,
        counterText: AOnBoardingCounter2,
        bgColor: AOnBoardingPage2Color,
        image: 'assets/images/onboarding2.png',
        height: size.height,
      )
      ),
      OnBoardingPage(model: OnBoardingModel(
        title: AOnBoardingTitle3,
        subTitle: AOnBoardingSubTitle3,
      counterText: AOnBoardingCounter3,
        bgColor: AOnBoardingPage3Color,
        image: 'assets/images/onboarding3.png',
        height: size.height,
      )
      ),
    ];


    return Scaffold(
      body: Stack(
        children:[
          LiquidSwipe(
              pages:pages,
              slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom:60,
            child:OutlinedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                side:const BorderSide(color: Colors.black26),
                shape:const CircleBorder(),
                padding:const EdgeInsets.all(16.0),
                onPrimary: Colors.white,
            ),
              child:Container(
                color:ADarkColor,
                child:Icon(Icons.arrow_forward_ios),
              )
          )
          ),
      ]
      ),
    );
  }
}
