import 'package:flutter/material.dart';

class CenterView extends StatelessWidget {
  final Widget child;
  const CenterView({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1100),
        child: child,
      ),
    );
  }
}
