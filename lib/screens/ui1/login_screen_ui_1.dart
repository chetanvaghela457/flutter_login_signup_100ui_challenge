import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/screens/ui1/singup_screen_ui_1.dart';
import 'package:login_ui_kit/widgets/textField.dart';

import '../../size_config.dart';

class LoginScreenUi1 extends StatefulWidget {
  const LoginScreenUi1({super.key});

  @override
  State<LoginScreenUi1> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenUi1> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppConstants.clrBackground,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
              left: getProportionateScreenWidth(15),
              right: getProportionateScreenWidth(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              SvgPicture.asset(
                AppConstants.imgAppLogo,
                width: getProportionateScreenWidth(120),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                AppConstants.signInTop,
                style: TextStyle(
                    color: AppConstants.clrBlack,
                    fontSize: getProportionateScreenWidth(30),
                    fontFamily: AppConstants.fontInterBold,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                AppConstants.enterEmailPassText,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: getProportionateScreenWidth(11),
                    fontFamily: AppConstants.fontInterRegular,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              TextFieldWidget(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                title: AppConstants.email,
                hintText: 'Enter Email',
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              TextFieldWidget(
                controller: emailController,
                keyboardType: TextInputType.visiblePassword,
                title: AppConstants.password,
                hintText: 'Enter Password',
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    AppConstants.forgotPassword,
                    style: TextStyle(
                        color: AppConstants.textBlue,
                        fontSize: getProportionateScreenWidth(14)),
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                width: getProportionateScreenWidth(340),
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
                decoration: BoxDecoration(
                    color: AppConstants.mainColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    AppConstants.login,
                    style: TextStyle(
                        fontFamily: AppConstants.fontInterMedium,
                        color: AppConstants.clrBackground,
                        fontSize: getProportionateScreenWidth(16)),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 0.5,
                    color: Colors.grey[400],
                    margin: EdgeInsets.only(right: 10),
                  ),
                  Text(
                    AppConstants.or,
                    style: TextStyle(
                        fontFamily: AppConstants.fontInterMedium,
                        color: AppConstants.greyColor4,
                        fontSize: getProportionateScreenWidth(14)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 150,
                    height: 0.5,
                    color: Colors.grey[400],
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                width: getProportionateScreenWidth(340),
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
                decoration: BoxDecoration(
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
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                    ),
                    SvgPicture.asset(
                      AppConstants.imgGoogle,
                      width: getProportionateScreenWidth(25),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                    ),
                    Text(
                      AppConstants.googleLogin,
                      style: TextStyle(
                          fontFamily: AppConstants.fontInterMedium,
                          color: AppConstants.clrBlack,
                          fontSize: getProportionateScreenWidth(16)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Container(
                width: getProportionateScreenWidth(340),
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
                decoration: BoxDecoration(
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
                      AppConstants.imgFacebook,
                      width: getProportionateScreenWidth(25),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                    ),
                    Text(
                      AppConstants.facebookLogin,
                      style: TextStyle(
                          fontFamily: AppConstants.fontInterMedium,
                          color: AppConstants.clrBlack,
                          fontSize: getProportionateScreenWidth(16)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.signUpScreen1),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: AppConstants.dontHaveAccount,
                        style: TextStyle(color: AppConstants.clrBlack),
                        children: [
                          TextSpan(
                              text: AppConstants.signUp,
                              style: TextStyle(color: AppConstants.textBlue))
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
