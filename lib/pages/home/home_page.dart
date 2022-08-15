import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenis_club_ap/pages/home/components/home_club_card_list_view.dart';

import 'package:tenis_club_ap/pages/home/components/home_custom_app_bar.dart';
import 'package:tenis_club_ap/pages/home/components/home_train_event_card_list_view.dart';
import 'package:tenis_club_ap/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeCustomAppBar(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Clubs',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              HomeClubCardListView(),
              SizedBox(
                height: 24,
              ),
              Text(
                'Train',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              HomeTrainEventCardListView(),
            ],
          ),
        ),
      ),
    );
  }
}
