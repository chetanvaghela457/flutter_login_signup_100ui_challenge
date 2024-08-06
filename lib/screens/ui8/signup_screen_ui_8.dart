import 'package:flutter/material.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/phone_coutry_field_without_title.dart';
import 'package:login_ui_kit/widgets/textFieldWithoutTitle.dart';

class SignupScreenUi8 extends StatefulWidget {
  const SignupScreenUi8({super.key});

  @override
  State<SignupScreenUi8> createState() => _SignupScreenUi8State();
}

class _SignupScreenUi8State extends State<SignupScreenUi8> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppConstants.imgUi8Bg,
                ),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: getProportionateScreenWidth(15),right: getProportionateScreenWidth(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back,color: AppConstants.clrBlack,),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                Text(
                  AppConstants.register,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppConstants.clrBlack,
                      fontSize: getProportionateScreenWidth(30),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Create an account to continue!",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppConstants.greyColor4,
                      fontSize: getProportionateScreenWidth(13),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                TextfieldWithoutTitleWidget(
                  controller: firstNameController,
                  hintText: "Enter First Name",
                  backgroundColor: AppConstants.clrBackground,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                TextfieldWithoutTitleWidget(
                  controller: lastNameController,
                  hintText: "Enter Last Name",
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  backgroundColor: AppConstants.clrBackground,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                TextfieldWithoutTitleWidget(
                  controller: emailController,
                  hintText: "Enter Email",
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  backgroundColor: AppConstants.clrBackground,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                TextfieldWithoutTitleWidget(
                  controller: dobController,
                  hintText: "eq. 14/10/1997",
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  backgroundColor: AppConstants.clrBackground,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                PhoneTextFieldWithoutTitle(
                  countryCode1: '+91',
                  mobileNoCont: phoneNumberController,
                  backgroundColor: AppConstants.clrBackground,
                  width: getProportionateScreenWidth(340),
                  height: getProportionateScreenHeight(50),
                  title: AppConstants.phoneNumber,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                TextfieldWithoutTitleWidget(
                  controller: passwordController,
                  hintText: "Enter Password",
                  backgroundColor: AppConstants.clrBackground,
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
                          isPassword ? Icons.visibility : Icons.visibility_off,
                          color: AppConstants.clrBlack)),

                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                ButtonWidget(
                  backgroundColor: AppConstants.mainColor,
                  width: getProportionateScreenWidth(340),
                  height: getProportionateScreenHeight(50),
                  title: AppConstants.signUp,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(50),
                ),
                Center(
                  child: RichText(
                      text: TextSpan(
                          text: AppConstants.dontHaveAccount,
                          style: TextStyle(
                            color: AppConstants.clrBlack,
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
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
