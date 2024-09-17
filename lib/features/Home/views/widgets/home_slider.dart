
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = Constants.imgList
        .map((item) => SizedBox(
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Image.network(
            item,
            fit: BoxFit.cover,
            width: double.infinity,
          )),
    ))
        .toList();

    return SizedBox(
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            enlargeCenterPage: true
        ),
        items: imageSliders,
      ),
    );
  }
}
