import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/screens/ui1/login_screen_ui_1.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/widgets/textField.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';


class SignUpScreenUi1 extends StatefulWidget {
  const SignUpScreenUi1({super.key});

  @override
  State<SignUpScreenUi1> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreenUi1> {

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppConstants.clrBackground,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
              left: getProportionateScreenWidth(15),
              right: getProportionateScreenWidth(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back)),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                AppConstants.signUp,
                style: TextStyle(
                    color: AppConstants.clrBlack,
                    fontSize: getProportionateScreenWidth(30),
                    fontFamily: AppConstants.fontInterBold,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                AppConstants.createAccountText,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: getProportionateScreenWidth(13),
                    fontFamily: AppConstants.fontInterRegular,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              TextFieldWidget(
                controller: fullNameController,
                keyboardType: TextInputType.text,
                title: AppConstants.fullName,
                hintText: 'Enter Fullname',
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              TextFieldWidget(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                title: AppConstants.email,
                hintText: 'Enter Email',
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              TextFieldWidget(
                controller: dobController,
                keyboardType: TextInputType.number,
                title: AppConstants.dateOfBirth,
                hintText: 'ex. 12/10/1992',
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              TextFieldWidget(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                title: AppConstants.phoneNumber,
                hintText: '983473894324',
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              TextFieldWidget(
                controller: passwordController,
                title: AppConstants.password,
                hintText: '323232',
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
                obsecure: isPassword ? true : false,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              ButtonWidget(title: AppConstants.signUp,),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.loginScreen1),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: AppConstants.dontHaveAccount,
                        style: TextStyle(color: AppConstants.clrBlack),
                        children: [
                          TextSpan(
                              text: AppConstants.signUp,
                              style: TextStyle(color: AppConstants.textBlue))
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


