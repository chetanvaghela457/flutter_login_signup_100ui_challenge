import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_kit/routes/app_routes.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/widgets/tab_item.dart';

class Selectionscreen extends StatefulWidget {
  const Selectionscreen({super.key});

  static String routeName = "/selectionScreen";

  @override
  State<Selectionscreen> createState() => _SelectionscreenState();
}

class _SelectionscreenState extends State<Selectionscreen>
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
    return Scaffold(
      backgroundColor: AppConstants.clrBackground,
      appBar: AppBar(
        title: Text(
          "Login UI Kit",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return GestureDetector(
              onTap: () {

                if(index == 4) {
                  Navigator.pushNamed(context, AppRoutes.tabSelectionScreen);
                }else if(index == 6) {
                  Navigator.pushNamed(context, AppRoutes.tabSelectionScreen7);
                }else {
                  Navigator.pushNamed(context, "/loginScreen${index+1}");
                }

              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/ui_${index + 1}.png",
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: const EdgeInsets.all(10),
              ),
            );
          }),
        ),
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
              margin: EdgeInsets.symmetric(horizontal: 20),
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
