import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenis_club_ap/pages/home/components/home_club_card.dart';
import 'package:tenis_club_ap/pages/home/home_controller.dart';

class HomeClubCardListView extends GetView<HomeController> {
  const HomeClubCardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 2000,
      height: MediaQuery.of(context).size.height * .45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.clubCard.length,
        itemBuilder: (context, index) {
          final list = controller.clubCard[index];
          return Row(
            children: [
              HomeClubCard(
                club: list.club,
                levels: list.level,
                numberOfEvents: list.numberOfEvents,
                image: list.image,
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          );
        },
      ),
    );
  }
}
