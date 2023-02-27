import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: carouselImages.map(
        (i) {
          return Container(
            child: Builder(
              builder: (BuildContext) => Image.network(
                i,
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        scrollDirection: Axis.horizontal,
        viewportFraction: 1,
        height: 200,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}
