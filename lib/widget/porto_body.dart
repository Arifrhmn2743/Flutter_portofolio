import 'package:flutter/material.dart';
import 'package:my_portofolio/Tools/const.dart';

class PortoBody extends StatefulWidget {
  const PortoBody({Key? key}) : super(key: key);

  @override
  State<PortoBody> createState() => _PortoBodyState();
}

class _PortoBodyState extends State<PortoBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            "My Portofolio",
            style: blueTitleSpaceStyle,
          ),
        ],
      ),
    );
  }
}
