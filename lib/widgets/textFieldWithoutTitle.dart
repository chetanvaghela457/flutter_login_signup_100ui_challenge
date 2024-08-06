import 'package:flutter/material.dart';
import 'package:login_ui_kit/size_config.dart';

import '../utils/constants.dart';

class TextfieldWithoutTitleWidget extends StatelessWidget {
  TextfieldWithoutTitleWidget(
      {this.controller,
      this.keyboardType,
      this.textInputAction,
      this.title,
      this.hintText,
      this.suffixIcon,
      this.obsecure,
        this.backgroundColor,
      Key? key})
      : super(key: key);

  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  String? hintText;
  Widget? suffixIcon;
  String? title;
  bool? obsecure;
  Color? backgroundColor;
  ValueChanged<String>? onChanged;
  ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? AppConstants.clrBackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: 1,
          // assign the color to the border color
          color: AppConstants.greyColor1,
        ),
      ),
      child: TextFormField(
        controller: controller,
        style: TextStyle(fontSize: getProportionateScreenWidth(14)),
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: obsecure ?? false,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          focusColor: Colors.grey[100],
          suffixIcon: suffixIcon ?? SizedBox(),
          hintText: hintText ?? '',
          hintStyle: TextStyle(fontSize: getProportionateScreenWidth(14)),
          fillColor: AppConstants.greyColor,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: AppConstants.greyColor2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: AppConstants.clrBlack)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: AppConstants.greyColor2)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: AppConstants.clrRed)),
        ),
        onChanged: onChanged,
        textInputAction: textInputAction ?? TextInputAction.next,
      ),
    );
  }
}
