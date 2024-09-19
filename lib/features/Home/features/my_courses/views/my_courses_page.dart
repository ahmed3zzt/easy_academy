import 'package:easy_academy/core/constant.dart';
import 'package:flutter/material.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("محاضراتي"),
        centerTitle: true,
      ),
      body: const Center(
        child: Directionality(
            textDirection: TextDirection.rtl, child: MyCoursesList()),
      ),
    );
  }
}

class MyCoursesList extends StatelessWidget {
  const MyCoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(Constants.imgList[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "المحاضرة الثانية لغة البرمجة",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Constants.mainColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "مجانا",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "مدة المحاضرة",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

            ],
          ),
        ]));
      },
      itemCount: 4,
    );
  }
}
