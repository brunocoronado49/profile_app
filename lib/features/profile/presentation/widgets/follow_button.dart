import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {},
            child: Text(
              'Follow',
              style: TextStyle(
                color: Color(0xFFE35B11),
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
          ),
        ),
      ),
    );
  }
}

