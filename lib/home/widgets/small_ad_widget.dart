import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';
import '../../constants/utils.dart';

class SmallAdWidget extends StatefulWidget {
  const SmallAdWidget({Key? key}) : super(key: key);

  @override
  State<SmallAdWidget> createState() => _SmallAdWidgetState();
}

class _SmallAdWidgetState extends State<SmallAdWidget> {
  int currentAd = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    double smallAdDimension = screenSize.width / 5;
    //Image and gradient
    return Column(
      children: [
        Container(
          height: smallAdDimension,
          width: screenSize.width,
          color: backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getSmallAdWidget(
                index: 0,
                side: smallAdDimension,
              ),
              getSmallAdWidget(
                index: 1,
                side: smallAdDimension,
              ),
              getSmallAdWidget(
                index: 2,
                side: smallAdDimension,
              ),
              getSmallAdWidget(
                index: 3,
                side: smallAdDimension,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget getSmallAdWidget({required int index, required double side}) {
    return Container(
      height: side,
      width: side,
      decoration: ShapeDecoration(
        color: Colors.white,
        shadows: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 8),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                smallAds[index],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  adItemNames[index],
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
