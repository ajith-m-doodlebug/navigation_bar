import 'package:flutter/material.dart';

class NavigationBarMobile extends StatefulWidget {
  @override
  _NavigationBarMobileState createState() => _NavigationBarMobileState();
}

class _NavigationBarMobileState extends State<NavigationBarMobile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40.0,
          color: Color(0xFF2D3133),
        ),
        IconButton(
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
          icon: Icon(
            Icons.menu_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        )
      ],
    );
  }
}
