import 'package:flutter/material.dart';

class OnBoardingSkipButton extends StatelessWidget {
  final void Function()? onTap;
  const OnBoardingSkipButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0XFF016a40),
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
