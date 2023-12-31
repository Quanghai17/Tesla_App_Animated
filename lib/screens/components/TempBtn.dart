import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla_car/HomeController.dart';
import 'package:tesla_car/constanins.dart';
import 'package:tesla_car/screens/components/BatteryStatus.dart';
import 'package:tesla_car/screens/components/DoorLock.dart';
import 'package:tesla_car/screens/components/TeslaBottomNavigationBar.dart';

class TempBtn extends StatelessWidget {
  const TempBtn({
    Key? key,
    required this.svgSrc,
    required this.title,
    this.isActive = true,
    required this.press,
    this.activeColor = primaryColor,
  }) : super(key: key);

  final String svgSrc, title;
  final bool isActive;
  final VoidCallback press;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(microseconds: 200),
            curve: Curves.easeInOutBack,
            height: isActive ? 76 : 50,
            width: isActive ? 76 : 50,
            child: SvgPicture.asset(
              svgSrc,
              color: isActive ? activeColor : Colors.white38,
            ),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          AnimatedDefaultTextStyle(
            duration: Duration(microseconds: 200),
            style: TextStyle(
                fontSize: 16,
                color: isActive ? activeColor : Colors.white38,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
            child: Text(
              title.toUpperCase(),
              // style: TextStyle(
              //     fontSize: 16,
              //     color: isActive ? primaryColor : Colors.white38,
              //     fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
