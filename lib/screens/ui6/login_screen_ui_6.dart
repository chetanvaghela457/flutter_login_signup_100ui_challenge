import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/textFieldWithoutBg.dart';

class LoginScreenUi6 extends StatefulWidget {
  const LoginScreenUi6({super.key});

  @override
  State<LoginScreenUi6> createState() => _LoginScreenUi6State();
}

class _LoginScreenUi6State extends State<LoginScreenUi6> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              AppConstants.imgUi6Bg,
              fit: BoxFit.fill,
              width: double.infinity,
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
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Text(
                    AppConstants.signInTop,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppConstants.clrBackground,
                        fontSize: getProportionateScreenWidth(30),
                        fontFamily: AppConstants.fontInterBold,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10),),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.signUpScreen6);
                    },
                    child: RichText(text: TextSpan(
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
                          fontSize: getProportionateScreenWidth(14),
                        ),)
                      ]
                    )),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30),),
                  Container(
                    width: getProportionateScreenWidth(340),
                    decoration: BoxDecoration(
                      color: AppConstants.clrBackground,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        TextfieldWithoutBg(
                          controller: emailController,
                          hintText: "Enter Email",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Container(width: double.infinity,height: 0.5,color: AppConstants.greyColor2,),
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
                                  isPassword ? Icons.visibility : Icons.visibility_off,
                                  color: AppConstants.clrBlack)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30),),
                  Text(AppConstants.forgotPassword,style: TextStyle(
                    color: AppConstants.clrBackground,
                    decoration: TextDecoration.underline,
                    fontSize: getProportionateScreenWidth(14)
                  ),),
                  SizedBox(height: getProportionateScreenHeight(30),),
                  ButtonWidget(
                    title: AppConstants.login,
                    width: getProportionateScreenWidth(330),
                    height: getProportionateScreenHeight(50),
                    backgroundColor: AppConstants.mainColor,
                  ),
                  SizedBox(height: getProportionateScreenHeight(100),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
