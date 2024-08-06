import 'package:flutter/material.dart';
import 'package:login_ui_kit/size_config.dart';

import '../utils/constants.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            title ?? AppConstants.email,
            style: TextStyle(
                color: Colors.grey,
                fontSize: getProportionateScreenWidth(12),
                fontFamily: AppConstants.fontInterRegular,
                fontWeight: FontWeight.bold),
          ),
        ),
        TextFormField(
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
      ],
    );
  }
}
