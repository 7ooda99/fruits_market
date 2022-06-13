import 'package:flutter/material.dart';
import 'package:fruits_market/core/size_config.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subtitle, this.image}) : super(key: key);

  final String? title;
  final String? subtitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        Image.asset(image!, height: SizeConfig.defaultSize! * 17,),
        const VerticalSpace(4),
        Text(
          title!,
          style: TextStyle(
              fontSize: 20,
              color: Color(0xff2f2e41),
              fontWeight: FontWeight.bold),
        ),
        const VerticalSpace(1.5),
        Text(
          subtitle!,
          style: TextStyle(
              fontSize: 15,
              color: Color(0xff2f2e41),
          )
        ),
      ],
    );
  }
}
