import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textField.dart';

class LoginScreenUi2 extends StatefulWidget {
  const LoginScreenUi2({super.key});

  @override
  State<LoginScreenUi2> createState() => _LoginScreenUi2State();
}

class _LoginScreenUi2State extends State<LoginScreenUi2> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppConstants.colorGradient1,
                AppConstants.colorGradient2,
              ]),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppConstants.imgAppLogo,
                color: AppConstants.clrBackground,
                width: getProportionateScreenWidth(150),
              ),
              Container(
                width: getProportionateScreenWidth(330),
                height: getProportionateScreenWidth(600),
                decoration: BoxDecoration(
                    color: AppConstants.clrBackground,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Text(
                      AppConstants.login,
                      style: TextStyle(
                          color: AppConstants.clrBlack,
                          fontFamily: AppConstants.fontInterBold,
                          fontSize: getProportionateScreenWidth(35),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, AppRoutes.signUpScreen2),
                      child: RichText(
                        text: TextSpan(
                            text: AppConstants.dontHaveAccount,
                            style: TextStyle(
                                color: AppConstants.clrBlack,
                                fontSize: getProportionateScreenWidth(13)),
                            children: [
                              TextSpan(
                                  text: AppConstants.signUp,
                                  style: TextStyle(
                                      color: AppConstants.textBlue,
                                      fontSize: getProportionateScreenWidth(13)))
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: getProportionateScreenWidth(20),
                          right: getProportionateScreenWidth(20)),
                      child: TextFieldWidget(
                        controller: emailController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        hintText: "Enter Email",
                        title: AppConstants.email,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: getProportionateScreenWidth(20),
                          right: getProportionateScreenWidth(20)),
                      child: TextFieldWidget(
                        controller: passwordController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        hintText: "Enter Password",
                        title: AppConstants.password,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            child: Icon(
                                isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppConstants.clrBlack)),
                        obsecure: isPasswordVisible ? true : false,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: getProportionateScreenWidth(10),right: getProportionateScreenWidth(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: getProportionateScreenWidth(170),
                            child: CheckboxListTile(
                              title: Text(
                                "Remember Password",
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(12)),
                              ),
                              value: checkBoxValue,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxValue = value!;
                                });
                              },
                              contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          Text(
                            AppConstants.forgotPassword,
                            style: TextStyle(
                                color: AppConstants.textBlue,
                                fontSize: getProportionateScreenWidth(13)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    ButtonWidget(
                      width: getProportionateScreenWidth(290),
                      height: getProportionateScreenHeight(50),
                      title: AppConstants.login,
                      onTap: () {

                      },
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: getProportionateScreenWidth(140),
                            height: 0.5,
                            color: AppConstants.greyColor2,
                          ),
                          Text("Or"),
                          Container(
                            width: getProportionateScreenWidth(140),
                            height: 0.5,
                            color: AppConstants.greyColor2,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    SocialButtonWidget(
                      title: AppConstants.googleLogin,
                      icon: AppConstants.imgGoogle,
                      backgroundColor: AppConstants.clrBackground,
                      width: getProportionateScreenWidth(290),
                      height: getProportionateScreenHeight(50),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    SocialButtonWidget(
                      title: AppConstants.facebookLogin,
                      icon: AppConstants.imgFacebook,
                      backgroundColor: AppConstants.clrBackground,
                      width: getProportionateScreenWidth(290),
                      height: getProportionateScreenHeight(50),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
