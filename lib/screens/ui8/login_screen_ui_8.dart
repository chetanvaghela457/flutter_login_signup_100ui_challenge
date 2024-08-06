import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textFieldWithoutTitle.dart';

class LoginScreenUi8 extends StatefulWidget {
  const LoginScreenUi8({super.key});

  @override
  State<LoginScreenUi8> createState() => _LoginScreenUi8State();
}

class _LoginScreenUi8State extends State<LoginScreenUi8> {

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
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppConstants.imgBlueLogo,
                      width: getProportionateScreenWidth(30),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  AppConstants.signInTop,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppConstants.clrBlack,
                      fontSize: getProportionateScreenWidth(30),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Enter your email and password to Login",
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
                  controller: emailController,
                  hintText: "Enter Email",
                  backgroundColor: AppConstants.clrBackground,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                TextfieldWithoutTitleWidget(
                  controller: passwordController,
                  hintText: "Enter Password",
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  backgroundColor: AppConstants.clrBackground,
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
                    Navigator.pushNamed(context, AppRoutes.signUpScreen8);
                  },
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
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
                SizedBox(height: getProportionateScreenHeight(20),),
                SocialButtonWidget(
                  title: AppConstants.googleLogin,
                  icon: AppConstants.imgGoogle,
                  backgroundColor: AppConstants.clrBackground,
                  width: getProportionateScreenWidth(340),
                  height: getProportionateScreenHeight(50),
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                SocialButtonWidget(
                  title: AppConstants.facebookLogin,
                  icon: AppConstants.imgFacebook,
                  backgroundColor: AppConstants.clrBackground,
                  width: getProportionateScreenWidth(340),
                  height: getProportionateScreenHeight(50),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
