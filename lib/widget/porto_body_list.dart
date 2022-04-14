import 'package:flutter/material.dart';
import 'package:my_portofolio/Models/porto_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Portois extends StatelessWidget {
  final Porto house;
  Portois({required this.house});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 500,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Color(0xFFF4F5F6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      house.img,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    house.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(33, 45, 82, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    house.desc,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(138, 150, 190, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      house.google == true
                          ? ElevatedButton(
                              onPressed: () async {
                                if (await canLaunch(house.urlGoogle)) {
                                  await launch(
                                    house.urlGoogle,
                                    forceSafariVC: true,
                                    forceWebView: true,
                                    webOnlyWindowName: '_blank',
                                  );
                                } else {
                                  throw 'Could not launch ${house.urlGoogle}';
                                }
                              },
                              child: Text("Google Play Store"))
                          : SizedBox(),
                      house.app == true
                          ? ElevatedButton(
                              onPressed: () async {
                                if (await canLaunch(house.urlApp)) {
                                  await launch(
                                    house.urlApp,
                                    forceSafariVC: true,
                                    forceWebView: true,
                                    webOnlyWindowName: '_blank',
                                  );
                                } else {
                                  throw 'Could not launch ${house.urlApp}';
                                }
                              },
                              child: Text("App Store"))
                          : SizedBox()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
