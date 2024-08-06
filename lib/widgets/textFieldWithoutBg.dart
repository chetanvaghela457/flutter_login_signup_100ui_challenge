import 'package:flutter/material.dart';
import 'package:login_ui_kit/size_config.dart';

import '../utils/constants.dart';

class TextfieldWithoutBg extends StatelessWidget {
  TextfieldWithoutBg(
      {this.controller,
      this.keyboardType,
      this.textInputAction,
      this.title,
      this.hintText,
      this.suffixIcon,
      this.obsecure,
      Key? key})
      : super(key: key);

  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  String? hintText;
  Widget? suffixIcon;
  String? title;
  bool? obsecure;
  ValueChanged<String>? onChanged;
  ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(fontSize: getProportionateScreenWidth(14)),
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obsecure ?? false,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        focusColor: Colors.grey[100],
        suffixIcon: suffixIcon ?? SizedBox(),
        hintText: hintText ?? '',
        hintStyle: TextStyle(fontSize: getProportionateScreenWidth(14)),
        fillColor: AppConstants.greyColor,
        disabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
      ),
      onChanged: onChanged,
      textInputAction: textInputAction ?? TextInputAction.next,
    );
  }
}
