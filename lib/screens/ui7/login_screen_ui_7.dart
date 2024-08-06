import 'package:flutter/material.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/phone_coutry_field.dart';
import 'package:login_ui_kit/widgets/textField.dart';

class LoginScreenUi7 extends StatefulWidget {
  const LoginScreenUi7({super.key});

  @override
  State<LoginScreenUi7> createState() => _LoginScreenUi7State();
}

class _LoginScreenUi7State extends State<LoginScreenUi7> {

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
        margin: EdgeInsets.only(left: getProportionateScreenWidth(10),right: getProportionateScreenWidth(10)),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: getProportionateScreenWidth(170),
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
                  width: getProportionateScreenWidth(180),
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
            SizedBox(height: getProportionateScreenHeight(10),),
            TextFieldWidget(
              controller: emailController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              title: AppConstants.email,
              hintText: 'Enter Email',
            ),
            SizedBox(height: getProportionateScreenHeight(10),),
            TextFieldWidget(
                controller: dobController,
                hintText: "Eq. 22/4/1983",
                title: AppConstants.dateOfBirth,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                suffixIcon: GestureDetector(
                    child: Icon(Icons.date_range,
                        color: AppConstants.clrBlack))
            ),
            SizedBox(height: getProportionateScreenHeight(10),),
            PhoneTextField(
              countryCode1: '+91',
              mobileNoCont: phoneNumberController,
              backgroundColor: AppConstants.clrBackground,
              width: getProportionateScreenWidth(340),
              height: getProportionateScreenHeight(50),
              title: AppConstants.phoneNumber,
            ),
            SizedBox(height: getProportionateScreenHeight(10),),
            TextFieldWidget(
              controller: passwordController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.visiblePassword,
              title: AppConstants.password,
              hintText: 'Enter Password',
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
              title: AppConstants.login,
              width: getProportionateScreenWidth(330),
              height: getProportionateScreenHeight(50),
              backgroundColor: AppConstants.mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
