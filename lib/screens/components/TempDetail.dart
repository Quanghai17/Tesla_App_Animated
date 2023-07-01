import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tesla_car/HomeController.dart';
import 'package:tesla_car/constanins.dart';
import 'package:tesla_car/screens/components/BatteryStatus.dart';
import 'package:tesla_car/screens/components/DoorLock.dart';
import 'package:tesla_car/screens/components/TempBtn.dart';
import 'package:tesla_car/screens/components/TeslaBottomNavigationBar.dart';

class TempDetail extends StatelessWidget {
  const TempDetail({
    super.key,
    required HomeController controller,
  }) : _controller = controller;

  final HomeController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                TempBtn(
                  isActive: _controller.isCoolSelected,
                  svgSrc: "assets/icons/coolShape.svg",
                  title: "Cool",
                  press: _controller.updateCoolSelectedTab,
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                TempBtn(
                  isActive: !_controller.isCoolSelected,
                  svgSrc: "assets/icons/heatShape.svg",
                  title: "heat",
                  activeColor: redColor,
                  press: _controller.updateCoolSelectedTab,
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_up,
                    size: 48,
                  )),
              const Text(
                "29" + "\u2103",
                style: TextStyle(fontSize: 80),
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 48,
                  )),
            ],
          ),
          const Spacer(),
          const Text("CURRENT TEMPERATURE"),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Inside".toUpperCase()),
                  Text(
                    "20" + "\u2103",
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OutSide".toUpperCase(),
                      style: TextStyle(color: Colors.white54),
                    ),
                    Text(
                      "35" + "\u2103",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: Colors.white54),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
