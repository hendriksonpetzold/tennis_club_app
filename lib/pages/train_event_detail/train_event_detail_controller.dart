import 'package:get/get.dart';

class TrainEventDetailController extends GetxController {
  String date = Get.arguments['date'];
  String startTime = Get.arguments['start_time'];
  String endTime = Get.arguments['end_time'];
  String level = Get.arguments['level'];
  int price = Get.arguments['price'];
  String trainName = Get.arguments['train_name'];
  String detailImage = Get.arguments['detail_image'];
}
