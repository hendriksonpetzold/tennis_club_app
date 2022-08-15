import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenis_club_ap/pages/on_boarding/components/on_boarding_choose_your_level_carousel.dart';
import 'package:tenis_club_ap/pages/on_boarding/components/on_boarding_skip_button.dart';
import 'package:tenis_club_ap/pages/on_boarding/on_boarding_controller.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);
  final OnBoardingController controller = Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
          ),
          const Center(
            child: Text(
              'Choose your level',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 23,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .08,
          ),
          const OnBoardingChooseYourLevelCarousel(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .08,
          ),
          OnBoardingSkipButton(
            onTap: () {
              Get.toNamed('/home_page');
            },
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Skip for now',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
