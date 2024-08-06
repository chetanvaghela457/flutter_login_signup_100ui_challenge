import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_kit/utils/constants.dart';
import 'package:login_ui_kit/size_config.dart';

class PhoneTextFieldWithoutBg extends StatelessWidget {
  ValueChanged<CountryCode?>? onChanged;
  TextEditingController? mobileNoCont;
  GestureTapCallback? onTap;
  bool? enabled;
  double? width, height;
  Color? backgroundColor;
  String? countryCode1 = "+91", title;

  PhoneTextFieldWithoutBg(
      {this.onChanged,
      this.mobileNoCont,
      this.onTap,
      this.enabled,
      this.countryCode1,
      this.width,
      this.height,
      this.title,
      this.backgroundColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(50),
      width: width ?? getProportionateScreenWidth(340),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CountryListPick(
              pickerBuilder: (context, CountryCode? countryCode) {
                return Row(
                  children: [
                    Text(countryCode!.dialCode.toString(),
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: AppConstants.fontInterMedium,
                            color: Color(0xFF999999))),
                    const SizedBox(width: 06),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Color(0xFF999999),
                    )
                  ],
                );
              },
              // To disable option set to false
              theme: CountryTheme(
                isShowFlag: false,
                isShowTitle: false,
                isShowCode: true,
                isDownIcon: true,
                showEnglishName: true,
              ),
              initialSelection: countryCode1 ?? '+91',
              onChanged: onChanged,
              useUiOverlay: true,
              useSafeArea: false),
          Expanded(
            child: TextFormField(
              controller: mobileNoCont,
              style: TextStyle(fontSize: getProportionateScreenWidth(14)),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                focusColor: Colors.grey[100],
                hintText: "Enter phone number",
                hintStyle: TextStyle(fontSize: getProportionateScreenWidth(14)),
                fillColor: AppConstants.greyColor,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
              onChanged: (value) {},
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
    );
  }
}
