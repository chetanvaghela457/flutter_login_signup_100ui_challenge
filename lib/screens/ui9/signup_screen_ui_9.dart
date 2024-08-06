import 'package:flutter/material.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/phone_coutry_field.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textField.dart';

class SignupScreenUi9 extends StatefulWidget {
  const SignupScreenUi9({super.key});

  @override
  State<SignupScreenUi9> createState() => _SignupScreenUi9State();
}

class _SignupScreenUi9State extends State<SignupScreenUi9> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppConstants.ui9bg), fit: BoxFit.fill)),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Image.asset(
                AppConstants.logo_colored_with_text,
                width: getProportionateScreenWidth(130),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppConstants.clrBackground,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: getProportionateScreenWidth(330),
                height: getProportionateScreenHeight(600),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(30),
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..shader = LinearGradient(colors: [
                              AppConstants.textGradient1,
                              AppConstants.textGradient2,
                              AppConstants.textGradient3,
                            ]).createShader(Rect.fromLTWH(0, 0, 200, 70))),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      "Already have an account? Login",
                      style: TextStyle(
                          color: AppConstants.greyColor5,
                          fontSize: getProportionateScreenWidth(13)),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(145),
                          padding: EdgeInsets.only(
                            right: getProportionateScreenWidth(15),
                          ),
                          child: TextFieldWidget(
                            controller: firstNameController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            title: "First Name",
                            hintText: "Enter First Name",
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(145),
                          child: TextFieldWidget(
                            controller: lastNameController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            title: "Last Name",
                            hintText: "Enter Last Name",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: getProportionateScreenWidth(20),right: getProportionateScreenWidth(20)),
                      child: TextFieldWidget(
                        title: AppConstants.email,
                        hintText: "Enter Email",
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(10),),
                    Container(
                      margin: EdgeInsets.only(left: getProportionateScreenWidth(20),right: getProportionateScreenWidth(20)),
                      child: TextFieldWidget(
                          controller: dobController,
                          hintText: "Eq. 22/4/1983",
                          title: AppConstants.dateOfBirth,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          suffixIcon: GestureDetector(
                              child: Icon(Icons.date_range,
                                  color: AppConstants.clrBlack))
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(10),),
                    PhoneTextField(
                      countryCode1: '+91',
                      mobileNoCont: phoneNumberController,
                      backgroundColor: AppConstants.clrBackground,
                      width: getProportionateScreenWidth(290),
                      height: getProportionateScreenHeight(50),
                      title: AppConstants.phoneNumber,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: getProportionateScreenWidth(20),right: getProportionateScreenWidth(20)),
                      child: TextFieldWidget(
                        title: AppConstants.password,
                        hintText: "Enter Passowrd",
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        obsecure: true,
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
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    ButtonWidget(
                      title: AppConstants.signUp,
                      backgroundColor: AppConstants.mainColor,
                      width: getProportionateScreenWidth(290),
                      height: getProportionateScreenHeight(50),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.loginScreen9);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
