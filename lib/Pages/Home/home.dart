import 'package:website/NavigationBar/Navigation.dart';
import 'package:website/NavigationBar/navigationbar.dart';
import 'package:website/NavigationBar/navigationbar_mobile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/center.dart';
import 'box_one.dart';

class Home extends StatefulWidget {
  static String id = 'Home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Navigation.homePage = true;
    Navigation.forcollabPage = false;
    Navigation.contactPage = false;
    Navigation.resumePage = false;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? MobileDrawer()
              : null,
          body: ListView(
            children: [
              NavigationBar(),
              BoxOne(),
            ],
          ),
        );
      },
    );
  }
}
