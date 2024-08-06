import 'package:flutter/material.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/routes.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/screens/ui1/login_screen_ui_1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppConstants.clrBackground,
        fontFamily: "Inter",
        textTheme: TextTheme(
          bodySmall: TextStyle(color: AppConstants.clrBlack),
          bodyLarge: TextStyle(color: AppConstants.clrBlack),
          bodyMedium: TextStyle(color: AppConstants.clrBlack),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.selectionScreen,
      routes: routes,
    );
  }
}
