import 'package:flutter/material.dart';
import 'package:tenis_club_ap/components/custom_app_button.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          const CustomAppButton(
            icon: Icons.menu,
            color: Colors.black,
            iconColor: Colors.white,
          ),
          Expanded(child: Container()),
          const CustomAppButton(
            icon: Icons.search,
            color: Colors.white,
            iconColor: Colors.black,
            haveBorder: true,
          ),
        ],
      ),
    );
  }
}
