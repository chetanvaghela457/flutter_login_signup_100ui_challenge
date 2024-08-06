import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/screens/ui5/login_screen_ui_5.dart';
import 'package:login_ui_kit/screens/ui5/signup_screen_ui_5.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/tab_item.dart';

class TabSelectionScreen extends StatefulWidget {
  const TabSelectionScreen({super.key});

  @override
  State<TabSelectionScreen> createState() => _TabSelectionScreenState();
}

class _TabSelectionScreenState extends State<TabSelectionScreen> with TickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.clrBackground,
        toolbarHeight: getProportionateScreenHeight(200),
        title: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppConstants.imgBlueLogo,
                  width: getProportionateScreenWidth(30),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  "Get Started now",
                  style: TextStyle(
                      color: AppConstants.clrBlack,
                      fontSize: getProportionateScreenWidth(30),
                      fontWeight: FontWeight.bold,
                      fontFamily: AppConstants.fontInterBold),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  "Create an account or log in to explore\n about our app",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppConstants.greyColor5,
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.normal,
                      fontFamily: AppConstants.fontInterMedium),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                tabWidget(),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          SignupScreenUi5(),
          LoginScreenUi5()
        ],
      ),
    );
  }

  Widget tabWidget() {
    return DefaultTabController(
        length: 2,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(height: 30,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffF5F6F9),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                controller: tabController,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey[700],
                tabs: [
                  TabItem(
                    title: "SignUp",
                  ),
                  TabItem(
                    title: "Login",
                  ),
                ],
              )),
        ));
  }
}
