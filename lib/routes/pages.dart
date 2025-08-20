import 'package:get/get.dart';
import 'package:latihan1_11pplg2/widget/bottom_nav_bar.dart';
import 'routes.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/calculatorPage.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculatorPage, page: () => calculatorPage()),
    GetPage(name: AppRoutes.footballPage, page: () => FootballPlayer()),
    GetPage(name: AppRoutes.editPlayerPage, page: () => EditPlayerPage()),
    GetPage(name: AppRoutes.bottomNavPage, page: () => BottomNavBar()),
  ];
}