import 'package:website/NavigationBar/Navigation.dart';
import 'package:website/NavigationBar/navigationbar.dart';
import 'package:website/NavigationBar/navigationbar_mobile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ForCollab extends StatefulWidget {
  static String id = 'ForCollab';
  @override
  _ForCollabState createState() => _ForCollabState();
}

class _ForCollabState extends State<ForCollab> {
  @override
  void initState() {
    super.initState();
    Navigation.homePage = false;
    Navigation.forcollabPage = true;
    Navigation.contactPage = false;
    Navigation.resumePage = false;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? MobileDrawer()
              : null,
          body: ListView(
            children: [
              NavigationBar(),
            ],
          ),
        );
      },
    );
  }
}
