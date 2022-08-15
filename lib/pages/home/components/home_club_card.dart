import 'package:flutter/material.dart';

class HomeClubCard extends StatelessWidget {
  final String club;
  final String levels;
  final int numberOfEvents;
  final String image;
  const HomeClubCard({
    Key? key,
    required this.club,
    required this.levels,
    required this.numberOfEvents,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .45,
      width: MediaQuery.of(context).size.width * .7,
      decoration: BoxDecoration(
        color: const Color(0XFFf4f0ed),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 16,
              bottom: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90,
                  width: 150,
                  child: Text(
                    club,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      levels,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  '$numberOfEvents events',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .42,
              height: MediaQuery.of(context).size.height * .38,
              child: Image(
                image: AssetImage(image),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
