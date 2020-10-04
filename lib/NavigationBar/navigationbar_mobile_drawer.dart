import 'package:flutter/material.dart';
import 'package:website/Pages/Home/home.dart';
import 'package:website/Pages/contact.dart';
import 'package:website/Pages/forcollab.dart';
import 'package:website/Pages/resume.dart';
import 'package:provider/provider.dart';

import 'Navigation.dart';

class MobileDrawer extends StatefulWidget {
  @override
  _MobileDrawerState createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Navigation>(builder: (context, navigation, child) {
      return Container(
        width: 300.0,
        decoration: BoxDecoration(
          color: Color(0xFF2D3133),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30.0, top: 30.0, bottom: 30.0),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF0CBDB3),
                ),
              ),
            ),
            Divider(
              height: 2,
              color: Color(0xFF0CBDB3),
            ),
            MobileDrawerItem(
              title: 'Home',
              page: Navigation.homePage,
              onTap: Home.id,
            ),
            MobileDrawerItem(
              title: 'For Collab',
              page: Navigation.forcollabPage,
              onTap: ForCollab.id,
            ),
            MobileDrawerItem(
              title: 'Contact',
              page: Navigation.contactPage,
              onTap: Contact.id,
            ),
            MobileDrawerItem(
              title: 'Resume',
              page: Navigation.resumePage,
              onTap: Resume.id,
            ),
          ],
        ),
      );
    });
  }
}

class MobileDrawerItem extends StatefulWidget {
  final String title;
  final bool page;
  final String onTap;

  const MobileDrawerItem({
    Key key,
    @required this.title,
    @required this.page,
    @required this.onTap,
  }) : super(key: key);

  @override
  _MobileDrawerItemState createState() => _MobileDrawerItemState();
}

class _MobileDrawerItemState extends State<MobileDrawerItem> {
  Color hoverColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
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
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, widget.onTap);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 30.0, top: 17.5, bottom: 17.5),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 15.0,
                color: widget.page ? Color(0xFF0CBDB3) : hoverColor,
              ),
            ),
          ),
        ),
        Divider(
          color: Color(0xFF0CBDB3),
        ),
      ],
    );
  }
}
