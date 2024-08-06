import 'package:flutter/material.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/phone_coutry_field.dart';
import 'package:login_ui_kit/widgets/phone_coutry_field_without_title.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textFieldWithoutTitle.dart';

class SignupScreenUi3 extends StatefulWidget {
  const SignupScreenUi3({super.key});

  @override
  State<SignupScreenUi3> createState() => _SignupScreenUi3State();
}

class _SignupScreenUi3State extends State<SignupScreenUi3> {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset(
                      AppConstants.imgUi3SignUpBg,
                      fit: BoxFit.fill,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: AppConstants.greyColor1,
                    ))
              ],
            ),
            Positioned(
                top: getProportionateScreenHeight(60),
                left: getProportionateScreenWidth(30),
                child: Icon(
                  Icons.arrow_back,
                  color: AppConstants.clrBackground,
                )),
            Positioned(
              bottom: 70,
              left: 20,
              right: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppConstants.signUp,
                    style: TextStyle(
                        color: AppConstants.clrBackground,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(30)),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10),),
                  RichText(
                      text: TextSpan(
                          text: AppConstants.alreadyHaveAccount,
                          style: TextStyle(
                              color: AppConstants.clrBackground,
                              fontSize: getProportionateScreenWidth(12),
                              fontWeight: FontWeight.w500),
                          children: [
                        TextSpan(
                            text: AppConstants.login,
                            style: TextStyle(
                                color: AppConstants.clrBackground,
                                decoration: TextDecoration.underline,
                                fontSize: getProportionateScreenWidth(12),
                                fontWeight: FontWeight.w500))
                      ])),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Container(
                    width: getProportionateScreenWidth(330),
                    height: getProportionateScreenHeight(550),
                    decoration: BoxDecoration(
                        color: AppConstants.clrBackground,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: getProportionateScreenWidth(150),
                              padding: EdgeInsets.only(
                                right: getProportionateScreenWidth(15),
                              ),
                              child: TextfieldWithoutTitleWidget(
                                controller: firstNameController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                hintText: "Enter First Name",
                              ),
                            ),
                            Container(
                              width: getProportionateScreenWidth(150),
                              child: TextfieldWithoutTitleWidget(
                                controller: lastNameController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                hintText: "Enter Last Name",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Container(
                          width: getProportionateScreenWidth(290),
                          child: TextfieldWithoutTitleWidget(
                            controller: emailController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            hintText: "Enter Email",
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Container(
                          width: getProportionateScreenWidth(290),
                          child: TextfieldWithoutTitleWidget(
                              controller: dobController,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.text,
                              hintText: "eq. 12/10/1996",
                              suffixIcon: GestureDetector(
                                  child: Icon(Icons.date_range,
                                      color: AppConstants.clrBlack))),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: getProportionateScreenWidth(10),
                              right: getProportionateScreenWidth(10)),
                          child: PhoneTextFieldWithoutTitle(
                            countryCode1: '+91',
                            mobileNoCont: phoneNumberController,
                            backgroundColor: AppConstants.clrBackground,
                            width: getProportionateScreenWidth(290),
                            height: getProportionateScreenHeight(50),
                            title: AppConstants.phoneNumber,
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Container(
                          width: getProportionateScreenWidth(290),
                          child: TextfieldWithoutTitleWidget(
                            controller: passwordController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: "*******",
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
                        ButtonWidget(
                          title: AppConstants.signUp,
                          onTap: () {

                          },
                          width: getProportionateScreenWidth(290),
                          height: getProportionateScreenHeight(50),
                          backgroundColor: AppConstants.mainColor,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: getProportionateScreenWidth(110),
                              height: 0.5,
                              color: AppConstants.greyColor2,
                            ),
                            Text("Or"),
                            Container(
                              width: getProportionateScreenWidth(110),
                              height: 0.5,
                              color: AppConstants.greyColor2,
                            )
                          ],
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        SocialButtonWidget(
                          title: AppConstants.googleLogin,
                          icon: AppConstants.imgGoogle,
                          width: getProportionateScreenWidth(290),
                          height: getProportionateScreenHeight(50),
                          backgroundColor: AppConstants.clrBackground,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
