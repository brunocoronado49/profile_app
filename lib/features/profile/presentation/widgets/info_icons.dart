import 'package:flutter/material.dart';

class InfoIcons extends StatelessWidget {
  const InfoIcons({super.key});

  @override
  Widget build(BuildContext context) {
    final iconColor = Colors.white;
    final iconSize = 40.0;
    final space = SizedBox(width: 40);
    final shadow =  BoxShadow(
      color: Color(0xFFE35B11),
      blurRadius: 8,
      spreadRadius: 2,
      offset: Offset(4, 1),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.circle_notifications_outlined,
          color: iconColor,
          size: iconSize,
          shadows: [shadow],
        ),
        space,
        Icon(
          Icons.add_circle_outline_rounded,
          color: iconColor,
          size: iconSize,
          shadows: [shadow],
        ),
        space,
        Icon(
          Icons.play_circle_outline,
          color: iconColor,
          size: iconSize,
          shadows: [shadow],
        ),
        space,
        Icon(
          Icons.account_circle_outlined,
          color: iconColor,
          size: iconSize,
          shadows: [shadow],
        ),
      ],
    );
  }
}