import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenis_club_ap/pages/home/components/home_train_event_card.dart';
import 'package:tenis_club_ap/pages/home/home_controller.dart';

class HomeTrainEventCardListView extends GetView<HomeController> {
  const HomeTrainEventCardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: controller.trainEventCard.length,
        itemBuilder: (context, index) {
          final list = controller.trainEventCard[index];
          return InkWell(
            onTap: () {
              Get.toNamed(
                '/home_page/detail_page',
                arguments: {
                  'date': list.date,
                  'start_time': list.startTime,
                  'end_time': list.endTime,
                  'level': list.level,
                  'price': list.price,
                  'train_name': list.trainName,
                  'detail_image': list.detailImage,
                },
              );
            },
            child: HomeTrainEventCard(
              train: list.trainName,
              date: list.date,
              startTime: list.startTime,
              endTime: list.endTime,
              image: list.image,
              price: list.price,
            ),
          );
        },
      ),
    );
  }
}
