import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenis_club_ap/components/custom_app_button.dart';
import 'package:tenis_club_ap/pages/train_event_detail/components/train_event_detail_button.dart';
import 'package:tenis_club_ap/pages/train_event_detail/components/train_event_detail_custom_box_information.dart';
import 'package:tenis_club_ap/pages/train_event_detail/train_event_detail_controller.dart';

class TrainEventDetailPage extends StatelessWidget {
  TrainEventDetailPage({Key? key}) : super(key: key);
  final TrainEventDetailController controller =
      Get.put(TrainEventDetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .55,
            color: const Color(0XFFedeef4),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 60, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomAppButton(
                        onTap: () {
                          Get.back();
                        },
                        icon: Icons.arrow_back,
                        color: Colors.white,
                        iconColor: Colors.black,
                        haveBorder: false,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    width: MediaQuery.of(context).size.width * .8,
                    child: Image(
                      image: AssetImage(
                        controller.detailImage,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 40,
                bottom: 24,
              ),
              height: MediaQuery.of(context).size.height * .45,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.trainName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: Text(
                      controller.overview,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TrainEventDetailCustomBoxInformation(
                    date: controller.date,
                    startTime: controller.startTime,
                    endTime: controller.endTime,
                    level: controller.level,
                  ),
                  Expanded(child: Container()),
                  TrainEventDetailButton(
                    price: controller.price,
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
