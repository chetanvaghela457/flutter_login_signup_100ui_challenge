import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textField.dart';

class LoginScreenUi4 extends StatefulWidget {
  const LoginScreenUi4({super.key});

  @override
  State<LoginScreenUi4> createState() => _LoginScreenUi4State();
}

class _LoginScreenUi4State extends State<LoginScreenUi4> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        color: AppConstants.clrBackground,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset(
                      AppConstants.imgUi4Login,
                      fit: BoxFit.fill,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: AppConstants.clrBackground,
                    )),
              ],
            ),
            Positioned(
                left: getProportionateScreenWidth(20),
                top: getProportionateScreenHeight(20),
                child: SafeArea(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AppConstants.imgAppLogo,
                          width: getProportionateScreenWidth(100),
                          color: AppConstants.clrBackground,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Text(
                          AppConstants.signInTop,
                          style: TextStyle(
                              color: AppConstants.clrBackground,
                              fontSize: 35,
                              fontFamily: AppConstants.fontInterBold,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        RichText(
                            text: TextSpan(
                                text: AppConstants.dontHaveAccount,
                                style: TextStyle(
                                  color: AppConstants.clrBackground,
                                  fontSize: getProportionateScreenWidth(14),
                                ),
                                children: [
                              TextSpan(
                                  text: AppConstants.signUp,
                                  style: TextStyle(
                                      color: AppConstants.mainColor,
                                      decoration: TextDecoration.underline,
                                      fontSize:
                                          getProportionateScreenWidth(14)))
                            ])),
                      ],
                    ),
                  ),
                )),
            Positioned(
                left: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(20),
                bottom: 5,
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(10),
                            right: getProportionateScreenWidth(10)),
                        child: TextFieldWidget(
                          controller: emailController,
                          hintText: "Enter Email",
                          title: AppConstants.email,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(10),
                            right: getProportionateScreenWidth(10)),
                        child: TextFieldWidget(
                          controller: passwordController,
                          hintText: "Enter Password",
                          title: AppConstants.password,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
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
                        height: getProportionateScreenHeight(20),
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
                      SizedBox(height: getProportionateScreenHeight(20),),
                      ButtonWidget(
                        title: AppConstants.login,
                        backgroundColor: AppConstants.mainColor,
                        width: getProportionateScreenWidth(330),
                        height: getProportionateScreenHeight(50),
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.signUpScreen4);
                        },
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: getProportionateScreenWidth(110),
                            height: 0.5,
                            color: AppConstants.greyColor2,
                          ),
                          Text("Or Login With"),
                          Container(
                            width: getProportionateScreenWidth(110),
                            height: 0.5,
                            color: AppConstants.greyColor2,
                          )
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SocialButtonWidget(
                            title: AppConstants.google,
                            icon: AppConstants.imgGoogle,
                            backgroundColor: AppConstants.clrBackground,
                            width: getProportionateScreenWidth(150),
                            height: getProportionateScreenHeight(50),
                          ),
                          SizedBox(width: getProportionateScreenWidth(10),),
                          SocialButtonWidget(
                            title: AppConstants.facebook,
                            icon: AppConstants.imgFacebook,
                            backgroundColor: AppConstants.clrBackground,
                            width: getProportionateScreenWidth(150),
                            height: getProportionateScreenHeight(50),
                          )
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(30),),
                      Center(
                        child: RichText(text: TextSpan(
                          text: AppConstants.agreement1,
                          style: TextStyle(
                            color: AppConstants.greyColor,
                            fontSize: getProportionateScreenWidth(14),
                          ),
                          children: [
                            TextSpan(
                            text: AppConstants.agreement2,
                            style: TextStyle(
                              color: AppConstants.clrBlack,
                              fontSize: getProportionateScreenWidth(14),
                            )),
                            TextSpan(
                                text: AppConstants.agreement3,
                                style: TextStyle(
                                  color: AppConstants.greyColor,
                                  fontSize: getProportionateScreenWidth(14),
                                )),
                            TextSpan(
                                text: AppConstants.agreement4,
                                style: TextStyle(
                                  color: AppConstants.clrBlack,
                                  fontSize: getProportionateScreenWidth(14),
                                ))
                          ]
                        ),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
