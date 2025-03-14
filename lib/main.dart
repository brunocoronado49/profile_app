import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child:  ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              children: [
                _TopView(),
                _BottomView(),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class _BottomView extends StatelessWidget {
  const _BottomView();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      child: Column(
        children: [
          _InfoData(),
          const SizedBox(height: 30),
          Text(
            'About Me...',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.black45
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Melina has long observed the Lands Between. She was born at the foot of the Erdtree. She is a secret child of Queen Marika, but not born of a mother. Unlike Messmer or Morgott, Melina does not recall Marika with fondness.',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoData extends StatelessWidget {
  const _InfoData();

  @override
  Widget build(BuildContext context) {
    final space = SizedBox(width: 70);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _UsersData(
          number: '432',
          label: 'Posts',
        ),
        space,
        _UsersData(
          number: '805',
          label: 'Followers',
        ),
        space,
        _UsersData(
          number: '100',
          label: 'Following',
        ),
      ]
    );
  }
}

class _UsersData extends StatelessWidget {
  final String number;
  final String label;

  const _UsersData({required this.label, required this.number});

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

class _TopView extends StatelessWidget {
  const _TopView();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: screenHeight / 1.6,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFFE35B11), const Color(0xFFE8E861)]
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 100),
          _CircleAvatar(),
          const SizedBox(height: 10),
          const Text(
            'Melina Elden',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 32
            ),
          ),
          const Text(
            'Mobile Developer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
          const SizedBox(height: 20),
          _InfoIcons(),
          const SizedBox(height: 30),
          _FollowButton(),
        ],
      ),
    );
  }
}

class _FollowButton extends StatelessWidget {
  const _FollowButton();

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

class _InfoIcons extends StatelessWidget {
  const _InfoIcons();

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

class _CircleAvatar extends StatelessWidget {
  const _CircleAvatar();

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
