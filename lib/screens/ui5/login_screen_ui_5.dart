import 'package:flutter/material.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/button_widget.dart';
import 'package:login_ui_kit/widgets/social_button_widget.dart';
import 'package:login_ui_kit/widgets/textField.dart';

class LoginScreenUi5 extends StatefulWidget {
  const LoginScreenUi5({super.key});

  @override
  State<LoginScreenUi5> createState() => _LoginScreenUi5State();
}

class _LoginScreenUi5State extends State<LoginScreenUi5> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPassword = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Container(
            margin: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                right: getProportionateScreenWidth(15)),
            child: TextFieldWidget(
              controller: emailController,
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
            margin: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                right: getProportionateScreenWidth(15)),
            child: TextFieldWidget(
              controller: passwordController,
              title: AppConstants.password,
              hintText: "Enter Password",
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
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
          ),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
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
              Text("Or Login With"),
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
          Container(
            margin: EdgeInsets.only(left: getProportionateScreenWidth(15),right: getProportionateScreenWidth(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialButtonWidget(
                  title: '',
                  icon: AppConstants.imgGoogle,
                  backgroundColor: AppConstants.clrBackground,
                  width: 80,
                ),
                SocialButtonWidget(
                  title: '',
                  icon: AppConstants.imgFacebook,
                  backgroundColor: AppConstants.clrBackground,
                  width: 80,
                ),
                SocialButtonWidget(
                  title: '',
                  icon: AppConstants.imgApple,
                  backgroundColor: AppConstants.clrBackground,
                  width: 80,
                ),
                SocialButtonWidget(
                  title: '',
                  icon: AppConstants.imgPhone,
                  backgroundColor: AppConstants.clrBackground,
                  width: 80,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
