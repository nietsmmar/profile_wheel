import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile_wheel/WheelItem.dart';
import 'package:profile_wheel/WheelItemConfig.dart';

class ProfileWheel extends StatefulWidget {
  final ImageProvider imageProvider;
  final backgroundColor;
  final dividerColor;
  final WheelItemConfig itemConfig;
  final double dividerWeight;
  final preSelected;
  final double width;
  final double imageSize;
  final double shadowMargin;

  const ProfileWheel({
    Key? key,
    required this.imageProvider,
    required this.backgroundColor,
    required this.dividerColor,
    required this.itemConfig,
    required this.width,
    required this.imageSize,
    this.shadowMargin = 15,
    this.dividerWeight = 1.0,
    this.preSelected = -1,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProfileWheelState();
}

class ProfileWheelState extends State<ProfileWheel> {
  List<LinearGradient> gradients = [];
  List<Widget> items = [];
  List<EdgeInsets> edgeInsets = [];
  List<EdgeInsets> edgeInsetsItem = [];
  int selected = -1;

  @override
  void initState() {
    super.initState();

    edgeInsets = [
      EdgeInsets.only(right: widget.dividerWeight, bottom: widget.dividerWeight),
      EdgeInsets.only(left: widget.dividerWeight, bottom: widget.dividerWeight),
      EdgeInsets.only(right: widget.dividerWeight, top: widget.dividerWeight),
      EdgeInsets.only(left: widget.dividerWeight, top: widget.dividerWeight)
    ];

    edgeInsetsItem = [
      EdgeInsets.only(left: widget.shadowMargin, top: widget.shadowMargin),
      EdgeInsets.only(right: widget.shadowMargin, top: widget.shadowMargin),
      EdgeInsets.only(bottom: widget.shadowMargin, left: widget.shadowMargin),
      EdgeInsets.only(bottom: widget.shadowMargin, right: widget.shadowMargin)
    ];

    gradients = [
      LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        stops: [0.1, 0.4],
        colors: [widget.dividerColor, widget.backgroundColor],
      ),
      LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: [0.1, 0.4],
        colors: [widget.dividerColor, widget.backgroundColor],
      ),
      LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: [0.4, 0.9],
        colors: [widget.backgroundColor, widget.dividerColor],
      ),
      LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        stops: [0.4, 0.9],
        colors: [widget.backgroundColor, widget.dividerColor],
      )
    ];

    selected = widget.preSelected;
  }

  @override
  Widget build(BuildContext context) {
    buildItems();
    return Container(
        height: widget.width,
        width: widget.width,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            GridView.count(
              primary: false,
              crossAxisCount: 2,
              children: List.generate(4, (index) {
                return Container(
                  margin: edgeInsetsItem[index],
                  decoration: BoxDecoration(
                    gradient: gradients[index],
                  ),
                  child: Container(margin: edgeInsets[index], color: widget.backgroundColor, child: items[index]),
                );
              }),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(widget.imageSize),
              child: Image(
                height: widget.imageSize,
                width: widget.imageSize,
                fit: BoxFit.cover,
                image: widget.imageProvider, // AssetImage
              ),
            ),
          ],
        ));
  }

  void buildItems() {
    items = [
      WheelItem(
        onTapCallback: () {
          setState(() {
            selected = 0;
            widget.itemConfig.onTapCallback1();
          });
        },
        selected: selected,
        index: 0,
        title: widget.itemConfig.title1,
        icon: widget.itemConfig.icon1,
        gradientAlignmentBegin: Alignment.topLeft,
        gradientAlignmentEnd: Alignment.bottomRight,
        topLeft: Radius.circular(1000),
        shadowOffset: widget.itemConfig.shadowOffset1,
        gradientEnd: widget.itemConfig.gradientEnd1,
        gradientStart: widget.itemConfig.gradientStart1,
        iconColor: widget.itemConfig.iconColor1,
        iconColorActive: widget.itemConfig.iconColorActive1,
        textColor: widget.itemConfig.textColor1,
        textColorActive: widget.itemConfig.textColorActive1,
        shadowBlurRadius: widget.itemConfig.shadowBlurRadius1,
        shadowColor: widget.itemConfig.shadowColor1,
        shadowSpreadRadius: widget.itemConfig.shadowSpreadRadius1,
        iconSize: widget.itemConfig.iconSize,
        textSize: widget.itemConfig.textSize,
      ),
      WheelItem(
        onTapCallback: () {
          setState(() {
            selected = 1;
            widget.itemConfig.onTapCallback2();
          });
        },
        selected: selected,
        index: 1,
        title: widget.itemConfig.title2,
        icon: widget.itemConfig.icon2,
        gradientAlignmentBegin: Alignment.topRight,
        gradientAlignmentEnd: Alignment.bottomLeft,
        topRight: Radius.circular(1000),
        shadowOffset: widget.itemConfig.shadowOffset2,
        gradientEnd: widget.itemConfig.gradientEnd2,
        gradientStart: widget.itemConfig.gradientStart2,
        iconColor: widget.itemConfig.iconColor2,
        iconColorActive: widget.itemConfig.iconColorActive2,
        textColor: widget.itemConfig.textColor2,
        textColorActive: widget.itemConfig.textColorActive2,
        shadowBlurRadius: widget.itemConfig.shadowBlurRadius2,
        shadowColor: widget.itemConfig.shadowColor2,
        shadowSpreadRadius: widget.itemConfig.shadowSpreadRadius2,
        iconSize: widget.itemConfig.iconSize,
        textSize: widget.itemConfig.textSize,
      ),
      WheelItem(
        onTapCallback: () {
          setState(() {
            selected = 2;
            widget.itemConfig.onTapCallback3();
          });
        },
        selected: selected,
        index: 2,
        title: widget.itemConfig.title3,
        icon: widget.itemConfig.icon3,
        gradientAlignmentBegin: Alignment.bottomLeft,
        gradientAlignmentEnd: Alignment.topRight,
        bottomLeft: Radius.circular(1000),
        shadowOffset: widget.itemConfig.shadowOffset3,
        gradientEnd: widget.itemConfig.gradientEnd3,
        gradientStart: widget.itemConfig.gradientStart3,
        iconColor: widget.itemConfig.iconColor3,
        iconColorActive: widget.itemConfig.iconColorActive3,
        textColor: widget.itemConfig.textColor3,
        textColorActive: widget.itemConfig.textColorActive3,
        shadowBlurRadius: widget.itemConfig.shadowBlurRadius3,
        shadowColor: widget.itemConfig.shadowColor3,
        shadowSpreadRadius: widget.itemConfig.shadowSpreadRadius3,
        iconSize: widget.itemConfig.iconSize,
        textSize: widget.itemConfig.textSize,
      ),
      WheelItem(
        onTapCallback: () {
          setState(() {
            selected = 3;
            widget.itemConfig.onTapCallback4();
          });
        },
        selected: selected,
        index: 3,
        title: widget.itemConfig.title4,
        icon: widget.itemConfig.icon4,
        gradientAlignmentBegin: Alignment.bottomRight,
        gradientAlignmentEnd: Alignment.topLeft,
        bottomRight: Radius.circular(1000),
        shadowOffset: widget.itemConfig.shadowOffset4,
        gradientEnd: widget.itemConfig.gradientEnd4,
        gradientStart: widget.itemConfig.gradientStart4,
        iconColor: widget.itemConfig.iconColor4,
        iconColorActive: widget.itemConfig.iconColorActive4,
        textColor: widget.itemConfig.textColor4,
        textColorActive: widget.itemConfig.textColorActive4,
        shadowBlurRadius: widget.itemConfig.shadowBlurRadius4,
        shadowColor: widget.itemConfig.shadowColor4,
        shadowSpreadRadius: widget.itemConfig.shadowSpreadRadius4,
        iconSize: widget.itemConfig.iconSize,
        textSize: widget.itemConfig.textSize,
      ),
    ];
  }
}
