import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_academy/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const route = '/home';

  final List<String> imgList = const [
    'https://api.bassthalk.com/courses_images/RD8jJgwTz1pCSNZmSRsui9Lymbd2NR7HJEJUP5xv.jpg',
    'https://api.bassthalk.com/courses_images/tNtUYqF0oDpov5rA6eTHtMyVz2sEU7JrGvXZgy2U.jpg',
    'https://api.bassthalk.com/courses_images/K4MDjyzloWH9lDqtXZ4Jm0JQ1bdaTevt3H0aCcne.jpg',
    'https://api.bassthalk.com/courses_images/xNsBLY1379J4a0OBJKBMvfbAE1HlRiLwi1yYm2iE.jpg',
    'https://api.bassthalk.com/courses_images/hXiFXUbmxfX1O33FCmMvm189ZuwgMHOejtYgNGh7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => SizedBox(
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ],
                  )),
            ))
        .toList();
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 28,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'مرحبا بك 👋',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 28),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: CarouselSlider(
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                      enlargeCenterPage: true),
                  items: imageSliders,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      '💣 اشهر الكورسات',
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white54,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.48,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              children: [
                                Image.network(imgList[3]),
                                const Positioned(
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Constants.mainColor,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 2),
                                      child: Text(
                                        '199EGP',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'المحاضره الاولي لغه عربيه....',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(color: Constants.mainColor),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              textDirection: TextDirection.rtl,
                              children: [
                                Row(
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Icon(
                                      CupertinoIcons.person,
                                      size: 20,
                                      color: Constants.mainColor,
                                    ),
                                    Text('محمد صلاح')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.star_lefthalf_fill,
                                      size: 20,
                                      color: Colors.amber,
                                    ),
                                    Text('4.2')
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
