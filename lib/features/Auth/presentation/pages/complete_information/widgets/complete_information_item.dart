
import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class CompleteInformationItem extends StatelessWidget {
  const CompleteInformationItem({ Key? key,required this.text, this.inputType, this.maxLines }) : super(key: key);
  final String text ;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),),
        VerticalSpace(2),
        CustomTextField(inputType: inputType, maxLines: maxLines,),
      ],
    );
  }
}