import 'package:website/Pages/Home/home.dart';
import 'package:website/Pages/contact.dart';
import 'package:website/Pages/forcollab.dart';
import 'package:website/Pages/resume.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/center.dart';

import 'Navigation.dart';

class NavigationBarDesktop extends StatefulWidget {
  @override
  _NavigationBarDesktopState createState() => _NavigationBarDesktopState();
}

class _NavigationBarDesktopState extends State<NavigationBarDesktop> {
  Color hoverColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Consumer<Navigation>(
      builder: (context, navigation, child) {
        return Container(
          height: 50.0,
          color: Color(0xFF2D3133),
          child: CenterView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DesktopNavigationItem(
                  title: 'Home',
                  page: Navigation.homePage,
                  onTap: Home.id,
                ),
                DesktopNavigationItem(
                  title: 'For Collab',
                  page: Navigation.forcollabPage,
                  onTap: ForCollab.id,
                ),
                DesktopNavigationItem(
                  title: 'Contact',
                  page: Navigation.contactPage,
                  onTap: Contact.id,
                ),
                DesktopNavigationItem(
                  title: 'Resume',
                  page: Navigation.resumePage,
                  onTap: Resume.id,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DesktopNavigationItem extends StatefulWidget {
  final String title;
  final bool page;
  final String onTap;

  const DesktopNavigationItem({
    Key key,
    @required this.title,
    @required this.page,
    @required this.onTap,
  }) : super(key: key);

  @override
  _DesktopNavigationItemState createState() => _DesktopNavigationItemState();
}

class _DesktopNavigationItemState extends State<DesktopNavigationItem> {
  Color hoverColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double fontSize =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? 20
                : 15;
        return InkWell(
          onHover: (bool isHover) {
            if (isHover) {
              setState(() {
                hoverColor = Color(0xFF0CBDB3);
              });
            } else {
              setState(() {
                hoverColor = Colors.white;
              });
            }
          },
          onTap: () async {
            await Navigator.pushNamed(context, widget.onTap);
          },
          child: Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: fontSize,
                color: widget.page ? Color(0xFF0CBDB3) : hoverColor,
                fontFamily: 'Graduate',
              ),
            ),
          ),
        );
      },
    );
  }
}
