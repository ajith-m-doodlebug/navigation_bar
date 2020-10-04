import 'package:website/NavigationBar/navigationbar_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'navigationbar_mobile.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: NavigationBarDesktop(),
      tablet: NavigationBarDesktop(),
      mobile: NavigationBarMobile(),
    );
  }
}
