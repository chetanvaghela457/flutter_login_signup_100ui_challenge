import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/size_config.dart';

class SocialButtonWidget extends StatelessWidget {
  SocialButtonWidget({
    this.title,
    this.height,
    this.width,
    this.backgroundColor,
    this.onTap,
    this.icon,
    super.key,
  });

  String? title;
  String? icon;
  double? width, height;
  Color? backgroundColor;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? getProportionateScreenWidth(340),
        height: height ?? getProportionateScreenHeight(50),
        padding: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppConstants.mainColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: 1,
            // assign the color to the border color
            color: AppConstants.greyColor1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon ?? AppConstants.imgGoogle,
              width: getProportionateScreenWidth(25),
            ),
            title!.isNotEmpty ? SizedBox(
              width: getProportionateScreenWidth(15),
            ) : SizedBox(),
            Text(
              title ?? '',
              style: TextStyle(
                  fontFamily: AppConstants.fontInterSemiBold,
                  color: AppConstants.clrBlack,
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(14)),
            ),
          ],
        ),
      ),
    );
  }
}
