import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenis_club_ap/pages/on_boarding/on_boarding_controller.dart';

class OnBoardingChooseYourLevelCarousel extends GetView<OnBoardingController> {
  const OnBoardingChooseYourLevelCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: controller.level.length,
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
        height: MediaQuery.of(context).size.height * .45,
      ),
      itemBuilder: (context, index, realIndex) {
        final list = controller.level[index];
        return InkWell(
          onTap: () {
            Get.toNamed('/home_page');
          },
          child: Container(
            width: MediaQuery.of(context).size.width * .7,
            decoration: BoxDecoration(
              color: const Color(0XFFf5f1ee),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image(
                          image: AssetImage(
                            list.image,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  list.levels,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
