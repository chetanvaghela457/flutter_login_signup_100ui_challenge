import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/screens/ui5/login_screen_ui_5.dart';
import 'package:login_ui_kit/screens/ui5/signup_screen_ui_5.dart';
import 'package:login_ui_kit/screens/ui7/login_screen_ui_7.dart';
import 'package:login_ui_kit/screens/ui7/signup_screen_ui_7.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/tab_item.dart';

class TabSelectionScreen7 extends StatefulWidget {
  const TabSelectionScreen7({super.key});

  @override
  State<TabSelectionScreen7> createState() => _TabSelectionScreenState();
}

class _TabSelectionScreenState extends State<TabSelectionScreen7>
    with TickerProviderStateMixin {
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
    return Container(
      child: Stack(
        children: [
          Container(
              width: double.infinity,
              child: Image.asset(
                AppConstants.imgUi6Bg,
                fit: BoxFit.fill,
              )),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              titleSpacing: 0,
              leadingWidth: 0,
              bottomOpacity: 0,
              backgroundColor: Colors.transparent,
              toolbarHeight: getProportionateScreenHeight(200),
              title: Container(
                width: double.infinity,
                height: getProportionateScreenHeight(200),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: getProportionateScreenWidth(10),right: getProportionateScreenWidth(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                          SvgPicture.asset(
                            AppConstants.imgAppLogo,
                            width: getProportionateScreenWidth(100),
                            color: AppConstants.clrBackground,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Text(
                            "Get Started now",
                            style: TextStyle(
                                color: AppConstants.clrBackground,
                                fontSize: getProportionateScreenWidth(30),
                                fontWeight: FontWeight.bold,
                                fontFamily: AppConstants.fontInterBold),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Text(
                            "Create an account or log in to explore about our app",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppConstants.clrBackground,
                                fontSize: getProportionateScreenWidth(12),
                                fontWeight: FontWeight.normal,
                                fontFamily: AppConstants.fontInterMedium),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      left: 0,
                      right: 0,
                      child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppConstants.clrBackground,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: tabWidget()),
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              controller: tabController,
              children: [SignupScreenUi7(), LoginScreenUi7()],
            ),
          ),
        ],
      ),
    );
  }

  Widget tabWidget() {
    return DefaultTabController(
        length: 2,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
              height: 30,
              width: double.infinity,
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
