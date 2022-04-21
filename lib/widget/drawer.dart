import 'package:flutter/material.dart';
import 'package:my_portofolio/translate/locale_keys.g.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/easy_localization.dart';

class SmallDrawer extends StatefulWidget {
  const SmallDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _SmallDrawerState createState() => _SmallDrawerState();
}

class _SmallDrawerState extends State<SmallDrawer> {
  final String _url = "https://sbis04.github.io/explore/#/";
  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey.shade900,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "About",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "My Portofolio",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  LocaleKeys.contacts.tr(),
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Text(
                          'Design Inspired by ',
                          style: TextStyle(
                            color: Colors.blueGrey[300],
                            fontSize: 14,
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              _launchURL();
                            },
                            child: Text(
                              'sbis04.github.io',
                              style: TextStyle(
                                color: Colors.blueGrey[300],
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
