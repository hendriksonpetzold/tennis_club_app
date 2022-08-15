import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  final bool haveBorder;
  final Color color;
  final Color iconColor;
  final IconData icon;
  final void Function()? onTap;
  const CustomAppButton({
    Key? key,
    this.onTap,
    required this.iconColor,
    required this.icon,
    required this.color,
    this.haveBorder = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: haveBorder ? Border.all(color: Colors.grey[400]!) : null,
        ),
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
