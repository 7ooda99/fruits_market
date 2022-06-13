import 'package:flutter/material.dart';
import 'package:fruits_market/features/splash/presentation/widgets/page_view_item.dart';





class CustomPageView extends StatelessWidget {
  const CustomPageView({ Key? key,@required this.pageController }) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
       PageViewItem(
         image: 'lib/assets/images/onboarding1.png',
         title:'E Shopping' ,
         subtitle: 'Explore top organic fruits & grap them',
       ),
       PageViewItem(
         image: 'lib/assets/images/onboarding2.png',
         title:'Delivery on the way ' ,
         subtitle: 'Get your order by speed delivery',
       ),
       PageViewItem(
         image: 'lib/assets/images/onboarding3.png',
         title:'Delivery Arrived' ,
         subtitle: 'Order is arriverd at your place',
       ),
      ],
    );
  }
}