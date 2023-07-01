import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tesla_car/HomeController.dart';
import 'package:tesla_car/constanins.dart';
import 'package:tesla_car/models/TyrePsi.dart';
import 'package:tesla_car/screens/components/BatteryStatus.dart';
import 'package:tesla_car/screens/components/DoorLock.dart';
import 'package:tesla_car/screens/components/TempBtn.dart';
import 'package:tesla_car/screens/components/TempDetail.dart';
import 'package:tesla_car/screens/components/TeslaBottomNavigationBar.dart';
import 'package:tesla_car/screens/components/Tyres.dart';

class TyrePsiCard extends StatelessWidget {
  const TyrePsiCard({
    Key? key,
    required this.isBottomTwoTyre,
    required this.tyrePsi,
  }) : super(key: key);

  final bool isBottomTwoTyre;
  final TyrePsi tyrePsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: tyrePsi.isLowPressure
              ? redColor.withOpacity(0.1)
              : Colors.white10,
          border: Border.all(
              color: tyrePsi.isLowPressure
                  ? redColor.withOpacity(0.1)
                  : primaryColor,
              width: 2),
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: isBottomTwoTyre
          ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              lowPressureText(context),
              const Spacer(),
              psiText(context, psi: tyrePsi.psi.toString()),
              const SizedBox(
                height: defaultPadding,
              ),
              const Text(
                "41\u2103",
                style: TextStyle(fontSize: 16),
              ),
            ])
          : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              psiText(context, psi: tyrePsi.psi.toString()),
              const SizedBox(
                height: defaultPadding,
              ),
              const Text(
                "41\u2103",
                style: TextStyle(fontSize: 16),
              ),
              const Spacer(),
              lowPressureText(context),
            ]),
    );
  }

  Column lowPressureText(BuildContext context) {
    return Column(
      children: [
        Text(
          "Low".toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Text(
          "Pressure".toUpperCase(),
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Text psiText(BuildContext context, {required String psi}) {
    return Text.rich(TextSpan(
        text: psi,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        children: [TextSpan(text: "psi", style: TextStyle(fontSize: 24))]));
  }
}
