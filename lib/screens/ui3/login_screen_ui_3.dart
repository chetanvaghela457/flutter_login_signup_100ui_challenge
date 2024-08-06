import 'package:flutter/material.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textFieldWithoutTitle.dart';

class LoginScreenUi3 extends StatefulWidget {
  const LoginScreenUi3({super.key});

  @override
  State<LoginScreenUi3> createState() => _LoginScreenUi3State();
}

class _LoginScreenUi3State extends State<LoginScreenUi3> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(flex: 1, child: Image.asset(AppConstants.imgUi3Bg,fit: BoxFit.fill,)),
                Expanded(flex: 1, child: Container(color: Colors.grey[100],)),
              ],
            ),
            Positioned(
              bottom: 150,
              left: 20,
              right: 20,
              child: Container(
                width: getProportionateScreenWidth(330),
                height: getProportionateScreenHeight(400),
                decoration: BoxDecoration(
                  color: AppConstants.clrBackground,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    SizedBox(height: getProportionateScreenHeight(10),),
                    SocialButtonWidget(
                      title: AppConstants.googleLogin,
                      icon: AppConstants.imgGoogle,
                      backgroundColor: AppConstants.clrBackground,
                      width: getProportionateScreenHeight(280),
                      height: getProportionateScreenHeight(50),
                    ),
                    SizedBox(height: getProportionateScreenHeight(10),),
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
                    Container(
                      padding: EdgeInsets.only(left: getProportionateScreenWidth(15),right: getProportionateScreenHeight(15)),
                      child: TextfieldWithoutTitleWidget(
                        controller: emailController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        hintText: "Enter Email",
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(15),),
                    Container(
                      padding: EdgeInsets.only(left: getProportionateScreenWidth(15),right: getProportionateScreenHeight(15)),
                      child: TextfieldWithoutTitleWidget(
                        controller: passwordController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        hintText: "Enter Password",

                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
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
                              value: checkBoxValue,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxValue = value!;
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
                      width: getProportionateScreenWidth(280),
                      height: getProportionateScreenHeight(50),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.signUpScreen3);
                      },
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
