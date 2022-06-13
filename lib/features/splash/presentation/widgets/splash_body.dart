import 'package:flutter/material.dart';
import 'package:fruits_market/core/size_config.dart';
import 'package:fruits_market/features/splash/presentation/on%20Boarding/presentation/on_boarding_view.dart';
import 'package:fruits_market/features/splash/presentation/on%20Boarding/presentation/widgets/on_boarding_body.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  AnimationController? animationController;
  Animation<double>? fadingAnimation; 

  @override
  void initState() {

    super.initState();
    animationController = 
    AnimationController(vsync: this , duration: Duration(milliseconds: 1000)) ;

    fadingAnimation = 
    Tween<double> (begin: .2, end: 1).animate(animationController!);
    
    animationController?.repeat(reverse: true);

    goToNextView();
  }


  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController?.dispose();
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
       
        children: [
        
          Spacer(flex: 1),
          
         FadeTransition(
           opacity: fadingAnimation!,
           child: Text(
                  'Fruit Market',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 51,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
         ),
          
          Image.asset('lib/assets/images/fruit1.png',)
          
        ],
      ),
    );
  }

  void goToNextView() 
  {
    Future.delayed(Duration(seconds: 3),()
    {
      Get.to(()=>OnBoardingView(), transition: Transition.fade);
    });
  }
}
