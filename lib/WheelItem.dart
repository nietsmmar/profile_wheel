import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WheelItem extends StatelessWidget {
  final VoidCallback onTapCallback;
  int selected;
  int index;
  final String title;
  final IconData icon;
  final Alignment gradientAlignmentBegin;
  final Alignment gradientAlignmentEnd;
  final Radius topLeft;
  final Radius topRight;
  final Radius bottomLeft;
  final Radius bottomRight;
  final Color gradientStart;
  final Color gradientEnd;
  final Color iconColor;
  final Color iconColorActive;
  final Color textColor;
  final Color textColorActive;
  final Color shadowColor;
  final double shadowBlurRadius;
  final double shadowSpreadRadius;
  final Offset shadowOffset;

  WheelItem(
      {required this.onTapCallback,
      required this.selected,
      required this.index,
      required this.title,
      required this.icon,
      required this.gradientAlignmentBegin,
      required this.gradientAlignmentEnd,
      this.topLeft = Radius.zero,
      this.topRight = Radius.zero,
      this.bottomLeft = Radius.zero,
      this.bottomRight = Radius.zero,
      required this.shadowOffset,
      this.gradientStart = Colors.white,
      this.gradientEnd = Colors.teal,
      this.iconColor = Colors.blueGrey,
      this.iconColorActive = Colors.white,
      this.textColor = Colors.blueGrey,
      this.textColorActive = Colors.white,
      this.shadowColor = Colors.teal,
      this.shadowBlurRadius = 4.0,
      this.shadowSpreadRadius = 0.0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTapCallback,
        child: Container(
            decoration: selected == index
                ? BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft, bottomRight: bottomRight),
                    gradient: LinearGradient(
                      begin: gradientAlignmentBegin,
                      end: gradientAlignmentEnd,
                      colors: [gradientEnd, gradientStart],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        spreadRadius: shadowSpreadRadius,
                        blurRadius: shadowBlurRadius,
                        offset: shadowOffset, // Shadow position
                      ),
                    ],
                  )
                : null,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 25,
                  color: selected == index ? iconColorActive : iconColor,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    color: selected == index ? textColorActive : textColor,
                  ),
                )
              ],
            )));
  }
}
