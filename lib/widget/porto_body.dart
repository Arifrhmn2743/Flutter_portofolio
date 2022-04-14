import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/Tools/const.dart';
import 'package:my_portofolio/widget/Responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_portofolio/widget/porto_body_list.dart';
import 'package:my_portofolio/widget/porto_slide.dart';

class PortoBody extends StatefulWidget {
  const PortoBody({Key? key}) : super(key: key);

  @override
  State<PortoBody> createState() => _PortoBodyState();
}

class _PortoBodyState extends State<PortoBody> {
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
            height: 450,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Portois(house: StaticPorto.porto[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 30.0,
                    );
                  },
                  itemCount: StaticPorto.porto.length),
            ),
          )
        ],
      ),
    );
  }
}
