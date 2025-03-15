import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  final String number;
  final String label;

  const UserData({super.key, required this.label, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          number,
          style: TextStyle(
            color: Color(0xFFE35B11),
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w500,
            fontSize: 15
          ),
        ),
      ],
    );
  }
}

