import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';
import 'package:fruits_market/features/Auth/presentation/pages/complete_information/complete_information_view.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          VerticalSpace(10),
          SizedBox(
            child: Image.asset(kLogo),
            height: SizeConfig.defaultSize! * 17,
          ),
          VerticalSpace(1),
          Text(
            'Fruit Market',
            style: TextStyle(
                fontSize: 51, color: kMainColor, fontWeight: FontWeight.bold),
          ),
          Expanded(child: SizedBox()),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    onTap: () {
                      Get.to(() => CompleteInformationView(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft);
                    },
                    color: Color(0xffdb3236),
                    iconData: FontAwesomeIcons.googlePlusG,
                    text: 'Login with',
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    color: Color(0xff4267b2),
                    iconData: FontAwesomeIcons.facebookF,
                    text: 'Login with',
                  ),
                ),
              )
            ],
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
