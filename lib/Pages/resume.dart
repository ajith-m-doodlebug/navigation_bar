import 'package:website/NavigationBar/Navigation.dart';
import 'package:website/NavigationBar/navigationbar.dart';
import 'package:website/NavigationBar/navigationbar_mobile_drawer.dart';
import 'package:website/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Resume extends StatefulWidget {
  static String id = 'Resume';
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  void initState() {
    super.initState();
    Navigation.homePage = false;
    Navigation.forcollabPage = false;
    Navigation.contactPage = false;
    Navigation.resumePage = true;
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
