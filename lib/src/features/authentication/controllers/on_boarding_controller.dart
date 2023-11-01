import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screen/on_boarding/on_boarding_page_widget.dart';

class onBoardingController extends GetxController{
  final controller=LiquidController();
  RxInt currentPage=0.obs;

  final pages=[
    OnBoardingPage(model: OnBoardingModel(
      title: AOnBoardingTitle1,
      subTitle: AOnBoardingSubTitle1,
      counterText: AOnBoardingCounter1,
      bgColor: AOnBoardingPage1Color,
      image: 'assets/images/onboarding1.png',
    )
    ),
    OnBoardingPage(model: OnBoardingModel(
      title: AOnBoardingTitle2,
      subTitle: AOnBoardingSubTitle2,
      counterText: AOnBoardingCounter2,
      bgColor: AOnBoardingPage2Color,
      image: 'assets/images/onboarding2.png',
    )
    ),
    OnBoardingPage(model: OnBoardingModel(
      title: AOnBoardingTitle3,
      subTitle: AOnBoardingSubTitle3,
      counterText: AOnBoardingCounter3,
      bgColor: AOnBoardingPage3Color,
      image: 'assets/images/onboarding3.png',
    )
    ),
  ];
  void onPageChangedCallback(int activePageIndex) {
      currentPage.value = activePageIndex;
    // currentPage=activePageIndex;
  }
  skip()=>controller.jumpToPage(page: 2);
  animateToNextSlide()
  {
    int nextPage=controller.currentPage+1;
    controller.animateToPage(page: nextPage);
  }
}