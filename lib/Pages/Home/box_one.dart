import 'package:flutter/material.dart';
import 'package:center_webview/center_webview.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BoxOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      bool mobile =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? true
              : false;
      return Container(
        color: Color(0xFF0A0A0A),
        height: 200.0,
        child: CenterWebView(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: mobile
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          //top: 20.0,
                          ),
                      child: Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          //top: 20.0,
                          ),
                      child: Text(
                        'AJITH M',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment:
                      mobile ? MainAxisAlignment.center : MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          //top: 20.0,
                          ),
                      child: Text(
                        'UI Designer',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
