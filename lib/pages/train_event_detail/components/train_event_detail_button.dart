import 'package:flutter/material.dart';

class TrainEventDetailButton extends StatelessWidget {
  final int price;
  final void Function()? onTap;
  const TrainEventDetailButton({
    Key? key,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0XFF016a40),
        ),
        child: Center(
          child: Text(
            'Participate \$$price',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
