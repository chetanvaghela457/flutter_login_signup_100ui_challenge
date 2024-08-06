import 'package:flutter/material.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textField.dart';

class LoginScreenUi9 extends StatefulWidget {
  const LoginScreenUi9({super.key});

  @override
  State<LoginScreenUi9> createState() => _LoginScreenUi9State();
}

class _LoginScreenUi9State extends State<LoginScreenUi9> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPassword = false;
  bool isChecked = false;

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
                      "Get Started Now",
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
                      "Create an account or log in to explore our app",
                      style: TextStyle(
                          color: AppConstants.greyColor5,
                          fontSize: getProportionateScreenWidth(13)),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    SocialButtonWidget(
                      width: getProportionateScreenWidth(270),
                      height: getProportionateScreenHeight(50),
                      title: AppConstants.googleLogin,
                      icon: AppConstants.imgGoogle,
                      backgroundColor: AppConstants.clrBackground,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    SocialButtonWidget(
                      width: getProportionateScreenWidth(270),
                      height: getProportionateScreenHeight(50),
                      title: AppConstants.facebookLogin,
                      icon: AppConstants.imgFacebook,
                      backgroundColor: AppConstants.clrBackground,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(130),
                          height: 0.5,
                          color: AppConstants.greyColor2,
                        ),
                        Text("Or",),
                        Container(
                          width: getProportionateScreenWidth(130),
                          height: 0.5,
                          color: AppConstants.greyColor2,
                        )
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
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
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: getProportionateScreenWidth(10),right: getProportionateScreenWidth(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: getProportionateScreenWidth(170),
                            child: CheckboxListTile(
                              title: Text(
                                "Remember Password",
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(12)),
                              ),
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                              contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          Text(
                            AppConstants.forgotPassword,
                            style: TextStyle(
                                color: AppConstants.textBlue,
                                fontSize: getProportionateScreenWidth(13)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    ButtonWidget(
                      title: AppConstants.login,
                      backgroundColor: AppConstants.mainColor,
                      width: getProportionateScreenWidth(340),
                      height: getProportionateScreenHeight(50),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.signUpScreen9);
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
