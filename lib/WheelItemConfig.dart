import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WheelItemConfig {
  final VoidCallback onTapCallback1;
  final String title1;
  final IconData icon1;
  final Color gradientStart1;
  final Color gradientEnd1;
  final Color iconColor1;
  final Color iconColorActive1;
  final Color textColor1;
  final Color textColorActive1;
  final Color shadowColor1;
  final double shadowBlurRadius1;
  final double shadowSpreadRadius1;
  final Offset shadowOffset1;

  final VoidCallback onTapCallback2;
  final String title2;
  final IconData icon2;
  final Color gradientStart2;
  final Color gradientEnd2;
  final Color iconColor2;
  final Color iconColorActive2;
  final Color textColor2;
  final Color textColorActive2;
  final Color shadowColor2;
  final double shadowBlurRadius2;
  final double shadowSpreadRadius2;
  final Offset shadowOffset2;

  final VoidCallback onTapCallback3;
  final String title3;
  final IconData icon3;
  final Color gradientStart3;
  final Color gradientEnd3;
  final Color iconColor3;
  final Color iconColorActive3;
  final Color textColor3;
  final Color textColorActive3;
  final Color shadowColor3;
  final double shadowBlurRadius3;
  final double shadowSpreadRadius3;
  final Offset shadowOffset3;

  final VoidCallback onTapCallback4;
  final String title4;
  final IconData icon4;
  final Color gradientStart4;
  final Color gradientEnd4;
  final Color iconColor4;
  final Color iconColorActive4;
  final Color textColor4;
  final Color textColorActive4;
  final Color shadowColor4;
  final double shadowBlurRadius4;
  final double shadowSpreadRadius4;
  final Offset shadowOffset4;

  final double textSize;
  final double iconSize;

  WheelItemConfig(
      {required this.onTapCallback1,
      required this.title1,
      required this.icon1,
      this.gradientStart1 = Colors.white,
      this.gradientEnd1 = Colors.green,
      this.iconColor1 = Colors.blueGrey,
      this.iconColorActive1 = Colors.white,
      this.textColor1 = Colors.blueGrey,
      this.textColorActive1 = Colors.white,
      this.shadowColor1 = Colors.green,
      this.shadowBlurRadius1 = 4.0,
      this.shadowSpreadRadius1 = 0.0,
      required this.shadowOffset1,
      required this.onTapCallback2,
      required this.title2,
      required this.icon2,
      this.gradientStart2 = Colors.white,
      this.gradientEnd2 = Colors.green,
      this.iconColor2 = Colors.blueGrey,
      this.iconColorActive2 = Colors.white,
      this.textColor2 = Colors.blueGrey,
      this.textColorActive2 = Colors.white,
      this.shadowColor2 = Colors.green,
      this.shadowBlurRadius2 = 4.0,
      this.shadowSpreadRadius2 = 0.0,
      required this.shadowOffset2,
      required this.onTapCallback3,
      required this.title3,
      required this.icon3,
      this.gradientStart3 = Colors.white,
      this.gradientEnd3 = Colors.green,
      this.iconColor3 = Colors.blueGrey,
      this.iconColorActive3 = Colors.white,
      this.textColor3 = Colors.blueGrey,
      this.textColorActive3 = Colors.white,
      this.shadowColor3 = Colors.green,
      this.shadowBlurRadius3 = 4.0,
      this.shadowSpreadRadius3 = 0.0,
      required this.shadowOffset3,
      required this.onTapCallback4,
      required this.title4,
      required this.icon4,
      this.gradientStart4 = Colors.white,
      this.gradientEnd4 = Colors.green,
      this.iconColor4 = Colors.blueGrey,
      this.iconColorActive4 = Colors.white,
      this.textColor4 = Colors.blueGrey,
      this.textColorActive4 = Colors.white,
      this.shadowColor4 = Colors.green,
      this.shadowBlurRadius4 = 4.0,
      this.shadowSpreadRadius4 = 0.0,
      required this.shadowOffset4,
      this.textSize = 22,
      this.iconSize = 25})
      : super();
}
