import 'package:flutter/material.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/phone_coutry_field.dart';
import 'package:login_ui_kit/widgets/textField.dart';

class SignupScreenUi5 extends StatefulWidget {
  const SignupScreenUi5({super.key});

  @override
  State<SignupScreenUi5> createState() => _SignupScreenUi5State();
}

class _SignupScreenUi5State extends State<SignupScreenUi5> {

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
    return Container(
      child: Column(
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
            width: getProportionateScreenWidth(340),
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
            width: getProportionateScreenWidth(340),
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(10),
                right: getProportionateScreenWidth(10)),
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
              width: getProportionateScreenWidth(330),
              height: getProportionateScreenHeight(50),
              title: AppConstants.phoneNumber,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Container(
            width: getProportionateScreenWidth(340),
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
    );
  }
}
