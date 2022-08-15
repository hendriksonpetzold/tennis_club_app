import 'package:flutter/material.dart';

class HomeTrainEventCard extends StatelessWidget {
  final String train;
  final String date;
  final String startTime;
  final String endTime;
  final String image;
  final int price;
  const HomeTrainEventCard({
    Key? key,
    required this.train,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0XFFedeef4),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                  width: 35,
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  train,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text('$date | $startTime - $endTime'),
              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '\$$price',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
