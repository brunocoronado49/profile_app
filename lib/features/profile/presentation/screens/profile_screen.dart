import 'package:flutter/material.dart';
import 'package:profile_app/features/shared/shared.dart';
import 'package:profile_app/features/profile/presentation/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: SideMenu(scaffoldKey: scaffoldKey),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings)
          ),
        ],
      ),
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
          CircleAvatarProfile(),
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
          InfoIcons(),
          const SizedBox(height: 30),
          FollowButton(),
        ],
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
          InfoData(),
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
