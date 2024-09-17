import 'package:flutter/material.dart';

import 'best_courses_list.dart';
import 'home_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 28),
          width: MediaQuery.of(context).size.width,
          child: const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'مرحبا بك 👋',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 28),
                  ),
                ),

              ),
              SliverToBoxAdapter(
                child:
                HomeSlider(),
              ),
              SliverToBoxAdapter(child:
              SizedBox(height: 16),),
              SliverToBoxAdapter(child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      '💣 اشهر الكورسات',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),),
              BestCoursesList()
            ],
          )),
    );
  }
}
