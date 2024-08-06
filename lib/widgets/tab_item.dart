import 'package:flutter/material.dart';
import 'package:login_ui_kit/size_config.dart';
import 'package:login_ui_kit/utils/constants.dart';

class TabItem extends StatelessWidget {

  String? title;

  TabItem({this.title,super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Tab(
      child: Text(
        title ?? '',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: getProportionateScreenWidth(13)),
      ),
    );
  }
}
