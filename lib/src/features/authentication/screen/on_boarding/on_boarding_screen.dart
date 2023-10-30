import 'package:f1/src/constants/image_string.dart';
import 'package:f1/src/constants/text_strings.dart';
import 'package:f1/src/features/authentication/models/model_on_boarding.dart';
import 'package:f1/src/features/authentication/screen/on_boarding/on_boarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/colors.dart';
import '../../controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget
{
   OnBoardingScreen({Key? key}) : super(key: key);




  Widget build(BuildContext context)
  {

    final obController=onBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children:[
          LiquidSwipe(
              pages:obController.pages,
              liquidController: obController.controller,
              onPageChangeCallback: obController.onPageChangedCallback,
              slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom:60,
            child:OutlinedButton(
              onPressed: ()=>obController.animateToNextSlide(),
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
              onPressed: ()=>obController.skip(),
              style: ElevatedButton.styleFrom(
                padding:const EdgeInsets.all(16.0),
                onPrimary: Colors.white,
              ),
                child:const Text("Skip",style: TextStyle(color:Colors.grey),)
            )
          ),
          Obx(
              ()=> Positioned(
              bottom: 10,
                child: AnimatedSmoothIndicator(
              activeIndex:obController.currentPage.value,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
              ),
              count:3,
            )
            ),
          )
      ]
      ),
    );
  }


}
