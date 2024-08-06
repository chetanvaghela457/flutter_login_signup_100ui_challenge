import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textFieldWithoutTitle.dart';

class LoginScreenUi10 extends StatefulWidget {
  const LoginScreenUi10({super.key});

  @override
  State<LoginScreenUi10> createState() => _LoginScreenUi10State();
}

class _LoginScreenUi10State extends State<LoginScreenUi10> {

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
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppConstants.imgUi10Bg,
                ),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
                left: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(20),
                top: getProportionateScreenHeight(60),
                bottom: getProportionateScreenHeight(60)),
            width: getProportionateScreenWidth(340),
            height: getProportionateScreenHeight(300),
            decoration: BoxDecoration(
                color: Color(0x9EFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              margin: EdgeInsets.only(left: getProportionateScreenWidth(10),right: getProportionateScreenWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  SvgPicture.asset(
                    AppConstants.imgBlueLogo,
                    width: getProportionateScreenWidth(30),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Text(
                    AppConstants.login,
                    style: TextStyle(
                        color: AppConstants.clrBlack,
                        fontSize: getProportionateScreenWidth(30),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Enter your email and password to log in",
                    style: TextStyle(
                        color: AppConstants.greyColor4,
                        fontSize: getProportionateScreenWidth(13),
                        fontWeight: FontWeight.normal),
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
                      Navigator.pushNamed(context, AppRoutes.signUpScreen10);
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
                      Text("Or Login With"),
                      Container(
                        width: getProportionateScreenWidth(110),
                        height: 0.5,
                        color: AppConstants.greyColor2,
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialButtonWidget(
                        title: '',
                        icon: AppConstants.imgGoogle,
                        backgroundColor: AppConstants.clrBackground,
                        width: getProportionateScreenWidth(70),
                        height: getProportionateScreenHeight(50),
                      ),
                      SocialButtonWidget(
                        title: '',
                        icon: AppConstants.imgFacebook,
                        backgroundColor: AppConstants.clrBackground,
                        width: getProportionateScreenWidth(70),
                        height: getProportionateScreenHeight(50),
                      ),
                      SocialButtonWidget(
                        title: '',
                        icon: AppConstants.imgApple,
                        backgroundColor: AppConstants.clrBackground,
                        width: getProportionateScreenWidth(70),
                        height: getProportionateScreenHeight(50),
                      ),
                      SocialButtonWidget(
                        title: '',
                        icon: AppConstants.imgPhone,
                        backgroundColor: AppConstants.clrBackground,
                        width: getProportionateScreenWidth(70),
                        height: getProportionateScreenHeight(50),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
