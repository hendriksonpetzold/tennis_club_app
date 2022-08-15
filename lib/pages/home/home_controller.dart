import 'package:get/get.dart';
import 'package:tenis_club_ap/models/club_card_model.dart';
import 'package:tenis_club_ap/models/train_event_model.dart';
import 'package:tenis_club_ap/style/app_images.dart';

class HomeController extends GetxController {
  List<ClubCardModel> clubCard = [
    ClubCardModel(
      club: 'Women\'s Club',
      level: 'All Levels',
      image: AppImages.womemPlayingTennis,
      numberOfEvents: 2,
    ),
    ClubCardModel(
      club: 'Men\'s Club',
      level: 'All Levels',
      image: AppImages.menPlayingTennis,
      numberOfEvents: 2,
    ),
  ];

  List<TrainEventModel> trainEventCard = [
    TrainEventModel(
      trainName: 'Yoga & Tennis',
      date: 'Feb 27',
      startTime: '10:00',
      endTime: '11:00',
      image: AppImages.meditationEmoji,
      price: 10,
      level: 'All levels',
      detailImage: AppImages.yoga,
    ),
    TrainEventModel(
      trainName: 'Beginner Bootcamp',
      date: 'July 17',
      startTime: '12:00',
      endTime: '15:00',
      image: AppImages.tennisBall,
      price: 15,
      level: 'All levels',
      detailImage: AppImages.beginnerLeague,
    ),
    TrainEventModel(
      trainName: 'Men\'s league',
      date: 'Feb 27',
      startTime: '10:00',
      endTime: '11:00',
      image: AppImages.advancedLevel,
      price: 30,
      level: 'All levels',
      detailImage: AppImages.mensLeague,
    ),
  ];
}
