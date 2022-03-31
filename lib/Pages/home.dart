import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_portofolio/translate/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_portofolio/widget/Responsive.dart';
import 'package:my_portofolio/widget/drawer.dart';
import 'package:universal_html/html.dart' as html;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _translate() async {
      if (context.locale.toString() == "en") {
        print("object");
        await context.setLocale(Locale("id"));
        html.window.location.reload();
      } else if (context.locale.toString() == "id") {
        await context.setLocale(Locale("en"));
        html.window.location.reload();
        print("232323");
      }
    }

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Colors.blueGrey.shade900,
              elevation: 0,
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    _translate();
                  },
                  icon: Icon(
                    Icons.translate,
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                )
              ],
              title: Text(
                "My Portofolio",
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
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
                      Text(
                        "My Portofolio",
                        style: TextStyle(
                          color: Colors.blueGrey.shade100,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3,
                        ),
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Text("About",
                                    style: TextStyle(
                                      color: Colors.blueGrey[100],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                              SizedBox(
                                width: screenSize.width / 40,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(LocaleKeys.contacts.tr(),
                                    style: TextStyle(
                                      color: Colors.blueGrey[100],
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      )),
                      InkWell(
                        onTap: () async {
                          print(context.locale);
                          _translate();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.translate,
                              color: Colors.white,
                            ),
                            Text("Translate",
                                style: TextStyle(
                                  color: Colors.blueGrey[100],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
      drawer: SmallDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.blueGrey.shade900,
                  height: screenSize.height * .45,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          LocaleKeys.body_profile.tr(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(300),
                        child: Image.asset(
                          'assets/images/1.jpg',
                          scale:
                              ResponsiveWidget.isSmallScreen(context) ? 4 : 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
