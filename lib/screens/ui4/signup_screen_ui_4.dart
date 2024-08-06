import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/phone_coutry_field.dart';
import 'package:login_ui_kit/widgets/textField.dart';
import 'package:login_ui_kit/widgets/textFieldWithoutTitle.dart';

class SignupScreenUi4 extends StatefulWidget {
  const SignupScreenUi4({super.key});

  @override
  State<SignupScreenUi4> createState() => _SignupScreenUi4State();
}

class _SignupScreenUi4State extends State<SignupScreenUi4> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

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
                      AppConstants.imgUi4SignUp,
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
                        Icon(Icons.arrow_back,color: AppConstants.clrBackground,),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Text(
                          AppConstants.register,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: getProportionateScreenWidth(160),
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
                            width: getProportionateScreenWidth(160),
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
                        height: getProportionateScreenHeight(10),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(10),
                            right: getProportionateScreenWidth(10)),
                        child: TextFieldWidget(
                          controller: dobController,
                          hintText: "Eq. 22/4/1983",
                          title: AppConstants.dateOfBirth,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: getProportionateScreenWidth(10),
                            right: getProportionateScreenWidth(10)),
                        child: PhoneTextField(
                          countryCode1: '+91',
                          mobileNoCont: phoneNumberController,
                          backgroundColor: AppConstants.clrBackground,
                          width: getProportionateScreenWidth(310),
                          height: getProportionateScreenHeight(50),
                          title: AppConstants.phoneNumber,
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
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
                      ButtonWidget(
                        title: AppConstants.signUp,
                        backgroundColor: AppConstants.mainColor,
                        width: getProportionateScreenWidth(330),
                        height: getProportionateScreenHeight(50),
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.loginScreen4);
                        },
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
