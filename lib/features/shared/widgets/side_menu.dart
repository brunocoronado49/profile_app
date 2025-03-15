import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
   final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return NavigationDrawer(
      elevation: 0,
      indicatorColor: Colors.white,
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
          widget.scaffoldKey.currentState?.closeDrawer();
        });
      },
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text('Welcome!', style: textStyles.titleMedium),
        ),
      ],
    );
  }
}

