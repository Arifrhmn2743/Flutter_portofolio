import 'package:my_portofolio/Models/porto_model.dart';
import 'package:my_portofolio/translate/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class StaticPorto {
  static final List<Porto> porto = [
    Porto(
        name: "Hijrah Masjid",
        desc: LocaleKeys.himas_desc.tr(),
        img: 'assets/images/himas.png',
        app: false,
        google: true,
        urlApp: "",
        urlGoogle:
            "https://play.google.com/store/apps/details?id=com.hijrahnuswantara.hijrah_merchants"),
    Porto(
        name: "Hijrah Nuswantara",
        desc: LocaleKeys.hinus_desc.tr(),
        img: "assets/images/hinus.png",
        app: false,
        google: true,
        urlApp: "",
        urlGoogle:
            "https://play.google.com/store/apps/details?id=sps.hijrah.com"),
    Porto(
        name: "MGS (My Golf Statistic)",
        desc: "desc",
        img: 'assets/images/mgs.png',
        app: true,
        google: true,
        urlApp:
            "https://apps.apple.com/id/app/my-golf-statistic-mgs/id1596619628?l=id",
        urlGoogle:
            "https://play.google.com/store/apps/details?id=com.mygolfstatistics.app"),
    Porto(
        name: "Capsule Bus Monitoring System",
        desc: "desc",
        img: "assets/images/capsule.png",
        app: false,
        google: false,
        urlApp: "",
        urlGoogle: ""),
    Porto(
        name: "SIMAT",
        desc: "desc",
        img: 'assets/images/simat.png',
        app: false,
        google: false,
        urlApp: "",
        urlGoogle: "")
  ];
}
