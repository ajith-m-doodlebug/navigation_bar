import 'package:website/NavigationBar/Navigation.dart';
import 'package:website/NavigationBar/navigationbar.dart';
import 'package:website/NavigationBar/navigationbar_mobile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatefulWidget {
  static String id = 'Contact';

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  @override
  void initState() {
    super.initState();
    Navigation.homePage = false;
    Navigation.forcollabPage = false;
    Navigation.contactPage = true;
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
