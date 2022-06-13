
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({ Key? key,@required this.inputType, this.suffexIcon,@required this.onSaved, this.onChange, this.maxLines }) : super(key: key);
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChange;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChange,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xffcccccc)
          ),
        ),
      ),
    );
  }
}