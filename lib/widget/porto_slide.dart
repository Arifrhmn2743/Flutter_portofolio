import 'package:my_portofolio/Models/porto_model.dart';

class StaticPorto {
  static final List<Porto> porto = [
    Porto(
        name: "Hijrah Masjid",
        desc: "desc",
        img: 'assets/images/himas.png',
        app: false,
        google: true),
    Porto(
        name: "Hijrah Nuswantara",
        desc: "desc",
        img: "assets/images/hinus.png",
        app: false,
        google: true),
    Porto(
        name: "MGS (My Golf Statistic)",
        desc: "desc",
        img: 'assets/images/mgs.png',
        app: true,
        google: true),
    Porto(
        name: "Capsule Bus Monitoring System",
        desc: "desc",
        img: "assets/images/capsule.png",
        app: false,
        google: false),
    Porto(
        name: "SIMAT",
        desc: "desc",
        img: 'assets/images/simat.png',
        app: false,
        google: false)
  ];
}
