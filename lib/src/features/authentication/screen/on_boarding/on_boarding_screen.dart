import 'package:f1/src/constants/image_string.dart';
import 'package:f1/src/constants/text_strings.dart';
import 'package:f1/src/features/authentication/models/model_on_boarding.dart';
import 'package:f1/src/features/authentication/screen/on_boarding/on_boarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/colors.dart';

class OnBoardingScreen extends StatelessWidget
{
   OnBoardingScreen({Key? key}) : super(key: key);
  final controller=LiquidController();
  int currentPage=0;

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
        alignment: Alignment.center,
        children:[
          LiquidSwipe(
              pages:pages,
              liquidController: controller,
              onPageChangeCallback: onPageChangedCallback,
              slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom:60,
            child:OutlinedButton(
              onPressed: (){
                int nextPage=controller.currentPage+1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                side:const BorderSide(color: Colors.black26),
                shape:const CircleBorder(),
                padding:const EdgeInsets.all(16.0),
                onPrimary: Colors.white,
            ),
              child:Container(
                padding:const EdgeInsets.all(20.0),
                decoration:const BoxDecoration(
                  color:Color(0xff272727),
                  shape: BoxShape.circle,
                ),
                child:Icon(Icons.arrow_forward_ios),
              )
          )
          ),
          Positioned(
            top:50,
            right:50,
            child:TextButton(
              onPressed: (){
                controller.jumpToPage(page: 2);
              },
              style: ElevatedButton.styleFrom(
                padding:const EdgeInsets.all(16.0),
                onPrimary: Colors.white,
              ),
                child:const Text("Skip",style: TextStyle(color:Colors.grey),)
            )
          ),
          Positioned(
            bottom: 10,
              child: AnimatedSmoothIndicator(
            activeIndex:controller.currentPage,
            effect: const WormEffect(
              activeDotColor: Color(0xff272727),
              dotHeight: 5.0,
            ),
            count:3,
          )
          )
      ]
      ),
    );
  }

  void onPageChangedCallback(int activePageIndex) {
    currentPage=activePageIndex;
  }
}
