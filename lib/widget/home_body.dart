import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/Tools/const.dart';
import 'package:my_portofolio/translate/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_portofolio/widget/Responsive.dart';
import 'package:my_portofolio/widget/about_body.dart';
import 'package:my_portofolio/widget/bottom_body.dart';
import 'package:my_portofolio/widget/porto_body.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
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
    return SingleChildScrollView(
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: const [AboutBody(), PortoBody(), BottomBody()],
      ),
    );
  }
}
