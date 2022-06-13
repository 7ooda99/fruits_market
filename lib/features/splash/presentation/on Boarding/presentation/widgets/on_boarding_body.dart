import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/features/splash/presentation/on%20Boarding/presentation/widgets/custom_indicator.dart';
import 'package:fruits_market/features/splash/presentation/widgets/custom_page_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../Auth/presentation/pages/login/login_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController),
        Positioned(
          bottom: SizeConfig.defaultSize! * 20,
          left: 0,
          right: 0,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 8,
            right: 32,
            child: Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Color(0xff898989),
              ),
            ),
          ),
        ),
        Positioned(
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: (){
              if(pageController!.page! < 2){
                pageController?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
              } else {
                Get.to(()=> LoginView(), transition: Transition.rightToLeft,duration:Duration(milliseconds: 500) );
              }
            },
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get Started' : 'Next')
                : 'Next',
          ),
        )
      ],
    );
  }
}
