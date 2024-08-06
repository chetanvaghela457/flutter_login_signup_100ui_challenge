import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/phone_coutry_field_without_bg.dart';
import 'package:login_ui_kit/widgets/textFieldWithoutBg.dart';

class SignupScreenUi6 extends StatefulWidget {
  const SignupScreenUi6({super.key});

  @override
  State<SignupScreenUi6> createState() => _SignupScreenUi6State();
}

class _SignupScreenUi6State extends State<SignupScreenUi6> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                AppConstants.imgUi6Bg,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                top: getProportionateScreenHeight(60),
                left: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(20),
                bottom: getProportionateScreenHeight(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppConstants.imgBlueLogo,
                      width: getProportionateScreenWidth(30),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Text(
                      AppConstants.createAccount,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppConstants.clrBackground,
                          fontSize: getProportionateScreenWidth(30),
                          fontFamily: AppConstants.fontInterBold,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.loginScreen6);
                      },
                      child: RichText(
                          text: TextSpan(
                              text: AppConstants.alreadyHaveAccount,
                              style: TextStyle(
                                color: AppConstants.clrBackground,
                                fontSize: getProportionateScreenWidth(14),
                              ),
                              children: [
                            TextSpan(
                              text: AppConstants.login,
                              style: TextStyle(
                                color: AppConstants.mainColor,
                                fontSize: getProportionateScreenWidth(14),
                              ),
                            )
                          ])),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
                    Container(
                      width: getProportionateScreenWidth(340),
                      decoration: BoxDecoration(
                        color: AppConstants.clrBackground,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          TextfieldWithoutBg(
                            controller: usernameController,
                            hintText: "Enter Username",
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                          ),
                          Container(
                            width: double.infinity,
                            height: 0.5,
                            color: AppConstants.greyColor2,
                          ),
                          TextfieldWithoutBg(
                            controller: emailController,
                            hintText: "Enter Email",
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Container(
                            width: double.infinity,
                            height: 0.5,
                            color: AppConstants.greyColor2,
                          ),
                          TextfieldWithoutBg(
                              controller: dobController,
                              hintText: "eq. 13/3/1997",
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              suffixIcon: GestureDetector(
                                  child: Icon(Icons.date_range,
                                      color: AppConstants.clrBlack))),
                          Container(
                            width: double.infinity,
                            height: 0.5,
                            color: AppConstants.greyColor2,
                          ),
                          PhoneTextFieldWithoutBg(
                            countryCode1: '+91',
                            mobileNoCont: phoneNumberController,
                            backgroundColor: AppConstants.clrBackground,
                            width: getProportionateScreenWidth(330),
                            height: getProportionateScreenHeight(50),
                            title: AppConstants.phoneNumber,
                          ),
                          Container(
                            width: double.infinity,
                            height: 0.5,
                            color: AppConstants.greyColor2,
                          ),
                          TextfieldWithoutBg(
                            controller: emailController,
                            hintText: "Enter Password",
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            obsecure: isPassword,
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPassword = !isPassword;
                                  });
                                },
                                child: Icon(
                                    isPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: AppConstants.clrBlack)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(30),),
                    ButtonWidget(
                      title: AppConstants.signUp,
                      width: getProportionateScreenWidth(330),
                      height: getProportionateScreenHeight(50),
                      backgroundColor: AppConstants.mainColor,
                    ),
                    SizedBox(height: getProportionateScreenHeight(100),),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
