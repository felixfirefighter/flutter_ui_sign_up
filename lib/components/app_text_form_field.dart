import 'package:flutter/material.dart';
import 'package:flutter_ui_sign_up/styles/colors.dart';

class AppTextFormField extends StatelessWidget {
  final String labelText;

  AppTextFormField({this.labelText = ''});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Color(AppColors.white)),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Color(AppColors.white),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(
              AppColors.white,
            ),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(
              AppColors.white,
            ),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(AppColors.white),
          ),
        ),
      ),
    );
  }
}
