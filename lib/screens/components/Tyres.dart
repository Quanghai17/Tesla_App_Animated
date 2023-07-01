import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tesla_car/HomeController.dart';
import 'package:tesla_car/constanins.dart';
import 'package:tesla_car/screens/components/BatteryStatus.dart';
import 'package:tesla_car/screens/components/DoorLock.dart';
import 'package:tesla_car/screens/components/TempBtn.dart';
import 'package:tesla_car/screens/components/TempDetail.dart';
import 'package:tesla_car/screens/components/TeslaBottomNavigationBar.dart';

List<Widget> tyres(BoxConstraints constrains) {
  return [
    Positioned(
        left: constrains.maxWidth * 0.08,
        top: constrains.maxHeight * 0.2,
        child: SvgPicture.asset("assets/icons/FL_Tyre.svg")),
    Positioned(
        right: constrains.maxWidth * 0.08,
        top: constrains.maxHeight * 0.2,
        child: SvgPicture.asset("assets/icons/FL_Tyre.svg")),
    Positioned(
        left: constrains.maxWidth * 0.08,
        top: constrains.maxHeight * 0.63,
        child: SvgPicture.asset("assets/icons/FL_Tyre.svg")),
    Positioned(
        right: constrains.maxWidth * 0.08,
        top: constrains.maxHeight * 0.63,
        child: SvgPicture.asset("assets/icons/FL_Tyre.svg")),
  ];
}
