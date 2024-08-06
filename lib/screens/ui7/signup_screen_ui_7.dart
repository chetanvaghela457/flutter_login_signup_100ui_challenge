import 'package:flutter/material.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textField.dart';

class SignupScreenUi7 extends StatefulWidget {
  const SignupScreenUi7({super.key});

  @override
  State<SignupScreenUi7> createState() => _SignupScreenUi7State();
}

class _SignupScreenUi7State extends State<SignupScreenUi7> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPassword = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: getProportionateScreenWidth(10),right: getProportionateScreenWidth(10)),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20),),
              TextFieldWidget(
                controller: emailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                title: AppConstants.email,
                hintText: 'Enter Email',
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
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
              SizedBox(height: getProportionateScreenHeight(20),),
              Container(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(10),
                    right: getProportionateScreenWidth(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: getProportionateScreenWidth(170),
                      child: CheckboxListTile(
                        title: Text(
                          "Remember Password",
                          style:
                          TextStyle(fontSize: getProportionateScreenWidth(12)),
                        ),
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              ButtonWidget(
                title: AppConstants.login,
                width: getProportionateScreenWidth(330),
                height: getProportionateScreenHeight(50),
                backgroundColor: AppConstants.mainColor,
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
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
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              SocialButtonWidget(
                width: getProportionateScreenWidth(340),
                height: getProportionateScreenHeight(50),
                title: AppConstants.googleLogin,
                icon: AppConstants.imgGoogle,
                backgroundColor: AppConstants.clrBackground,
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              SocialButtonWidget(
                width: getProportionateScreenWidth(340),
                height: getProportionateScreenHeight(50),
                title: AppConstants.facebookLogin,
                icon: AppConstants.imgFacebook,
                backgroundColor: AppConstants.clrBackground,
              )
            ],
          ),
      ),
    );
  }
}
