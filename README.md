[![](https://img.shields.io/pub/v/profile_wheel)](https://pub.dev/packages/profile_wheel)
# profile_wheel

Flutter package to help you create your customized profile wheel.
There are many options available to customize the wheel. The following example only covers the
 required parameters. But it is possible to set all colors/shades etc.

![alt text](https://github.com/nietsmmar/profile_wheel/blob/main/lib/example.gif "Example
 screenshot")
 
## Getting Started
Example:
```dart
ProfileWheel(
  itemConfig: WheelItemConfig(
    icon1: Icons.monetization_on,
    onTapCallback1: () {},
    shadowOffset1: Offset(-2, -2),
    title1: "123 Coins",
    icon2: Icons.person_add_alt_1,
    onTapCallback2: () {},
    shadowOffset2: Offset(2, -2),
    title2: "5 Friends",
    icon3: Icons.post_add,
    onTapCallback3: () {},
    shadowOffset3: Offset(-4, 8),
    title3: "7 Posts",
    icon4: Icons.add_moderator,
    onTapCallback4: () {},
    shadowOffset4: Offset(4, 8),
    title4: "3 Badges",
  ),
  dividerColor: Colors.grey[300],
  backgroundColor: Colors.white,
  dividerWeight: 1,
  preSelected: 3,
  imageProvider: NetworkImage("https://www.w3schools.com/howto/img_avatar2.png"),
)
```
