import 'package:flutter/material.dart';
import 'package:my_portofolio/Tools/const.dart';
import 'package:my_portofolio/translate/locale_keys.g.dart';
import 'package:my_portofolio/widget/Responsive.dart';
import 'package:easy_localization/easy_localization.dart';

class AboutBody extends StatefulWidget {
  const AboutBody({Key? key}) : super(key: key);

  @override
  State<AboutBody> createState() => _AboutBodyState();
}

class _AboutBodyState extends State<AboutBody> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: Colors.blueGrey.shade900,
          height: ResponsiveWidget.isSmallScreen(context)
              ? screenSize.height * .40
              : screenSize.height * .45,
        ),
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About me",
                  style: blueTitleSpaceStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKeys.body_profile.tr(),
                        style: whiteTextStyle,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: Image.asset(
                        'assets/images/1.jpg',
                        scale: ResponsiveWidget.isSmallScreen(context) ? 4 : 3,
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
