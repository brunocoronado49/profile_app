import 'package:flutter/material.dart';
import 'user_data.dart';

class InfoData extends StatelessWidget {
  const InfoData({super.key});

  @override
  Widget build(BuildContext context) {
    final space = SizedBox(width: 70);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UserData(
          number: '432',
          label: 'Posts',
        ),
        space,
        UserData(
          number: '805',
          label: 'Followers',
        ),
        space,
        UserData(
          number: '100',
          label: 'Following',
        ),
      ]
    );
  }
}