import 'package:flutter/material.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/screens/SelectionScreen.dart';
import 'package:login_ui_kit/screens/ui1/login_screen_ui_1.dart';
import 'package:login_ui_kit/screens/ui1/singup_screen_ui_1.dart';
import 'package:login_ui_kit/screens/ui10/login_screen_ui_10.dart';
import 'package:login_ui_kit/screens/ui10/signup_screen_ui_10.dart';
import 'package:login_ui_kit/screens/ui2/login_screen_ui_2.dart';
import 'package:login_ui_kit/screens/ui2/signup_screen_ui_2.dart';
import 'package:login_ui_kit/screens/ui3/login_screen_ui_3.dart';
import 'package:login_ui_kit/screens/ui3/signup_screen_ui_3.dart';
import 'package:login_ui_kit/screens/ui4/login_screen_ui_4.dart';
import 'package:login_ui_kit/screens/ui4/signup_screen_ui_4.dart';
import 'package:login_ui_kit/screens/ui5/login_screen_ui_5.dart';
import 'package:login_ui_kit/screens/ui5/signup_screen_ui_5.dart';
import 'package:login_ui_kit/screens/ui5/tab_selection_screen.dart';
import 'package:login_ui_kit/screens/ui6/login_screen_ui_6.dart';
import 'package:login_ui_kit/screens/ui6/signup_screen_ui_6.dart';
import 'package:login_ui_kit/screens/ui7/login_screen_ui_7.dart';
import 'package:login_ui_kit/screens/ui7/signup_screen_ui_7.dart';
import 'package:login_ui_kit/screens/ui7/tab_selection_screen_7.dart';
import 'package:login_ui_kit/screens/ui8/login_screen_ui_8.dart';
import 'package:login_ui_kit/screens/ui8/signup_screen_ui_8.dart';
import 'package:login_ui_kit/screens/ui9/login_screen_ui_9.dart';
import 'package:login_ui_kit/screens/ui9/signup_screen_ui_9.dart';

final Map<String, WidgetBuilder> routes = {
  AppRoutes.selectionScreen: (contxt) => Selectionscreen(),

  //1st UI
  AppRoutes.loginScreen1: (contxt) => LoginScreenUi1(),
  AppRoutes.signUpScreen1: (contxt) => SignUpScreenUi1(),

  //2nd UI
  AppRoutes.loginScreen2: (contxt) => LoginScreenUi2(),
  AppRoutes.signUpScreen2: (contxt) => SignupScreenUi2(),

  //3rd UI
  AppRoutes.loginScreen3: (contxt) => LoginScreenUi3(),
  AppRoutes.signUpScreen3: (contxt) => SignupScreenUi3(),

  //4th UI
  AppRoutes.loginScreen4: (contxt) => LoginScreenUi4(),
  AppRoutes.signUpScreen4: (contxt) => SignupScreenUi4(),

  //5th UI
  AppRoutes.loginScreen5: (contxt) => LoginScreenUi5(),
  AppRoutes.signUpScreen5: (contxt) => SignupScreenUi5(),
  AppRoutes.tabSelectionScreen: (contxt) => TabSelectionScreen(),

  //5th UI
  AppRoutes.loginScreen6: (contxt) => LoginScreenUi6(),
  AppRoutes.signUpScreen6: (contxt) => SignupScreenUi6(),

  //7th UI
  AppRoutes.loginScreen7: (contxt) => LoginScreenUi7(),
  AppRoutes.signUpScreen7: (contxt) => SignupScreenUi7(),
  AppRoutes.tabSelectionScreen7: (contxt) => TabSelectionScreen7(),

  //8th UI
  AppRoutes.loginScreen8: (contxt) => LoginScreenUi8(),
  AppRoutes.signUpScreen8: (contxt) => SignupScreenUi8(),

  //8th UI
  AppRoutes.loginScreen9: (contxt) => LoginScreenUi9(),
  AppRoutes.signUpScreen9: (contxt) => SignupScreenUi9(),

  //8th UI
  AppRoutes.loginScreen10: (contxt) => LoginScreenUi10(),
  AppRoutes.signUpScreen10: (contxt) => SignupScreenUi10(),
};
