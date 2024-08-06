import 'package:flutter/material.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/phone_coutry_field.dart';
import 'package:login_ui_kit/widgets/textField.dart';

class SignupScreenUi2 extends StatefulWidget {
  const SignupScreenUi2({super.key});

  @override
  State<SignupScreenUi2> createState() => _SignupScreenUi2State();
}

class _SignupScreenUi2State extends State<SignupScreenUi2> {

  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
            top: getProportionateScreenHeight(20),
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(20)),
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
          child: Container(
            padding: EdgeInsets.only(
                top: getProportionateScreenHeight(10),
                left: getProportionateScreenWidth(10),
                right: getProportionateScreenWidth(10)),
            width: getProportionateScreenWidth(330),
            height: getProportionateScreenWidth(700),
            decoration: BoxDecoration(
                color: AppConstants.clrBackground,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  AppConstants.signUp,
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(35),
                      fontWeight: FontWeight.bold,
                      fontFamily: AppConstants.fontInterSemiBold,
                      color: AppConstants.clrBlack),
                ),
                SizedBox(height: getProportionateScreenHeight(10),),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, AppRoutes.loginScreen2),
                  child: RichText(
                    text: TextSpan(
                        text: AppConstants.alreadyHaveAccount,
                        style: TextStyle(
                            color: AppConstants.clrBlack,
                            fontSize: getProportionateScreenWidth(13)),
                        children: [
                          TextSpan(
                              text: AppConstants.login,
                              style: TextStyle(
                                  color: AppConstants.textBlue,
                                  fontSize: getProportionateScreenWidth(13)))
                        ]),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                Container(
                  margin: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(10)),
                  child: TextFieldWidget(
                    controller: fullNameController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    hintText: "Enter FullName",
                    title: AppConstants.fullName,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                Container(
                  margin: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(10)),
                  child: TextFieldWidget(
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    hintText: "Enter Email",
                    title: AppConstants.email,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                Container(
                  margin: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(10)),
                  child: TextFieldWidget(
                    controller: dobController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    hintText: "Ex. 16/10/1997",
                    title: AppConstants.dateOfBirth,
                    suffixIcon: GestureDetector(
                        child: Icon(
                            Icons.date_range,
                            color: AppConstants.clrBlack)),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                Container(
                  margin: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(10)),
                  child: PhoneTextField(
                    countryCode1: '+91',
                    mobileNoCont: phoneNumberController,
                    backgroundColor: AppConstants.clrBackground,
                    width: getProportionateScreenWidth(290),
                    height: getProportionateScreenHeight(50),
                    title: AppConstants.phoneNumber,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                Container(
                  margin: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(10)),
                  child: TextFieldWidget(
                    controller: passwordController,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: "*******",
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
                SizedBox(height: getProportionateScreenHeight(20),),
                Center(
                  child: ButtonWidget(
                    width: getProportionateScreenWidth(290),
                    height: getProportionateScreenHeight(50),
                    title: AppConstants.signUp,
                    onTap: () {

                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
