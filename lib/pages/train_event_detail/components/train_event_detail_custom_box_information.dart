import 'package:flutter/material.dart';

class TrainEventDetailCustomBoxInformation extends StatelessWidget {
  final String date;
  final String startTime;
  final String endTime;
  final String level;
  const TrainEventDetailCustomBoxInformation({
    Key? key,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 90,
            padding: const EdgeInsets.only(
              top: 16,
              left: 4,
              right: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFF504f4f),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              top: 16,
              left: 4,
              right: 4,
            ),
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFF504f4f),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.schedule,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '$startTime - $endTime',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              top: 16,
              left: 4,
              right: 4,
            ),
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0XFF504f4f),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.star_border,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  level,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
