import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/Tools/const.dart';
import 'package:my_portofolio/translate/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_portofolio/widget/Responsive.dart';
import 'package:my_portofolio/widget/drawer.dart';
import 'package:my_portofolio/widget/home_body.dart';
import 'package:universal_html/html.dart' as html;
import 'package:get/get.dart' hide Trans;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _translate() async {
      if (context.locale.toString() == "en") {
        print("object");
        await context.setLocale(Locale("id"));
        Get.updateLocale(Locale("id"));
        if (kIsWeb) {
          html.window.location.reload();
        }
        setState(() {
          context.setLocale(Locale("id"));
        });
      } else if (context.locale.toString() == "id") {
        await context.setLocale(Locale("en"));
        Get.updateLocale(Locale("en"));
        if (kIsWeb) {
          html.window.location.reload();
        }
        setState(() {
          context.setLocale(Locale("en"));
        });
        print("232323");
      }
      setState(() {});
    }

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.blueGrey[400],
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                backgroundColor: Colors.blueGrey.shade900,
                elevation: 0,
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _translate();
                      });
                    },
                    icon: Icon(
                      Icons.translate,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  )
                ],
                title: Text("Arif's Portofolio", style: blueTitleSpaceStyle),
              )
            : PreferredSize(
                preferredSize: Size(screenSize.width, screenSize.height),
                child: Container(
                  color: Colors.blueGrey.shade900,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("My Portofolio", style: blueTitleSpaceStyle),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text("About", style: blueTitleStyle),
                                ),
                                SizedBox(
                                  width: screenSize.width / 40,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(LocaleKeys.contacts.tr(),
                                      style: blueTitleStyle),
                                ),
                              ],
                            ),
                          ],
                        )),
                        InkWell(
                          onTap: () {
                            print(context.locale);
                            setState(() {
                              _translate();
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.translate,
                                color: Colors.white,
                              ),
                              Text("Translate", style: blueTitleStyle)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
        drawer: SmallDrawer(),
        body: HomeBody());
  }
}
