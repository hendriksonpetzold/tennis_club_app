import 'package:get/get.dart';
import 'package:tenis_club_ap/pages/home/home_page.dart';
import 'package:tenis_club_ap/pages/on_boarding/on_boarding_page.dart';
import 'package:tenis_club_ap/pages/train_event_detail/train_event_detail_page.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(name: '/', page: () => OnBoardingPage()),
    GetPage(name: '/home_page', page: () => HomePage(), children: [
      GetPage(
        name: '/detail_page',
        page: () => TrainEventDetailPage(),
      )
    ]),
  ];
}
