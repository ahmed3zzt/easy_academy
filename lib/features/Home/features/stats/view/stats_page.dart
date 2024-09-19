import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الاحصائيات"),
        centerTitle: true,
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.pinkAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("مشاهده المحاضرات" , style: TextStyle(color: Colors.white , fontSize: 18),),
                  Text("10" , style: TextStyle(color: Colors.white , fontSize: 22),),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("الامتحانات المكتملة" , style: TextStyle(color: Colors.white , fontSize: 18),),
                  Text("8" , style: TextStyle(color: Colors.white , fontSize: 22),),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.deepOrangeAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("عدد الدورات" , style: TextStyle(color: Colors.white , fontSize: 18),),
                  Text("4" , style: TextStyle(color: Colors.white , fontSize: 22),),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.green,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],

              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("اجتهادك الان" , style: TextStyle(color: Colors.white , fontSize: 18),),
                  Text("82%" , style: TextStyle(color: Colors.white , fontSize: 22),),
                ],
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
