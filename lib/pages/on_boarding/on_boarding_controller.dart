import 'package:get/get.dart';
import 'package:tenis_club_ap/models/level_card_model.dart';
import 'package:tenis_club_ap/style/app_images.dart';

class OnBoardingController extends GetxController {
  final List<LevelCardModel> level = [
    LevelCardModel(
      image: AppImages.beginnerLevel,
      levels: 'Beginner',
    ),
    LevelCardModel(
      image: AppImages.averageLevel,
      levels: 'Average',
    ),
    LevelCardModel(
      image: AppImages.advancedLevel,
      levels: 'Advanced',
    ),
    LevelCardModel(
      image: AppImages.proLevel,
      levels: 'Pro',
    ),
  ];
}
