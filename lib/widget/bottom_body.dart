import 'package:flutter/material.dart';
import 'package:my_portofolio/Tools/const.dart';
import 'package:my_portofolio/translate/locale_keys.g.dart';
import 'package:my_portofolio/widget/Responsive.dart';
import 'package:easy_localization/easy_localization.dart';

class BottomBody extends StatefulWidget {
  const BottomBody({Key? key}) : super(key: key);

  @override
  State<BottomBody> createState() => _BottomBodyState();
}

class _BottomBodyState extends State<BottomBody> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.blueGrey.shade900,
      height: ResponsiveWidget.isSmallScreen(context)
          ? screenSize.height * .40
          : screenSize.height * .45,
      width: screenSize.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.contacts.tr(),
              style: blueTitleSpaceStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/link.png',
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "LinkedIn",
                  style: whiteTextStyle,
                )
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Email",
                  style: whiteTextStyle,
                )
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Email",
                  style: whiteTextStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
