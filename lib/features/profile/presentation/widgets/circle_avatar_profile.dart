import 'package:flutter/material.dart';

class CircleAvatarProfile extends StatelessWidget {
  const CircleAvatarProfile({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFE35B11),
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(4, 1),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(150),
        child: Image.asset(
          'assets/melina.jpg',
          fit: BoxFit.fill,
          width: 200,
          height: 200
        ),
      ),
    );
  }
}

