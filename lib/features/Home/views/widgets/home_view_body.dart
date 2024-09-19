import 'package:easy_academy/core/constant.dart';
import 'package:easy_academy/features/Auth/views/widgets/modernTextForm.dart';
import 'package:flutter/material.dart';

import 'best_courses_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: CustomScrollView(
            slivers: [
              // Welcome Widget
              SliverToBoxAdapter(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Constants.mainColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 15,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            ', احمد عز ثابت  👋',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(fontSize: 28, color: Colors.white),
                          ),
                          Text(
                            'مرحبا بك ',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(fontSize: 28, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      const ModernTextInput(
                        hintText: 'البحث',
                        keyboardType: TextInputType.text,
                        secureText: false,
                        icon: Icons.search,
                      ),
                    ],
                  ),
                ),
              ),
              // Search Section
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              const SliverToBoxAdapter(
                child: Padding(
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
                ),
              ),
              const BestCoursesList()
            ],
          )),
    );
  }
}
