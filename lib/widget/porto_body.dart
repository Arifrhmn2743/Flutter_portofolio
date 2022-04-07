import 'package:flutter/material.dart';
import 'package:my_portofolio/Tools/const.dart';
import 'package:my_portofolio/widget/Responsive.dart';

class PortoBody extends StatefulWidget {
  const PortoBody({Key? key}) : super(key: key);

  @override
  State<PortoBody> createState() => _PortoBodyState();
}

class _PortoBodyState extends State<PortoBody> {
  List<String> images = [
    'assets/images/capsule.png',
    'assets/images/himas.png',
    'assets/images/hinus.png',
    'assets/images/mgs.png',
    'assets/images/simat.png'
  ];
  List<String> detail = [];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            "My Portofolio",
            style: blueTitleSpaceStyle,
          ),
          SizedBox(height: 20),
          Container(
            width: screenSize.width,
            height: screenSize.height / 2,
            color: Colors.amber,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      children: [
                        Image.asset(
                          images[index],
                          scale:
                              ResponsiveWidget.isSmallScreen(context) ? 5 : 2,
                        ),
                        Text("data")
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
