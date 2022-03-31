import 'package:my_portofolio/Pages/home.dart';

import 'links.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [GetPage(name: AppLinks.home, page: () => HomeScreen())];
}
