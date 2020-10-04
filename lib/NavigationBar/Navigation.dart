import 'package:flutter/material.dart';

class Navigation extends ChangeNotifier {
  static bool homePage = false;
  static bool forcollabPage = false;
  static bool contactPage = false;
  static bool resumePage = false;
  bool page1;
  bool page2;
  bool page3;
  bool page4;

  Navigation([this.page1, this.page2, this.page3, this.page4]) {
    page1 ??= homePage;
    page2 ??= forcollabPage;
    page3 ??= contactPage;
    page4 ??= resumePage;
  }
}
