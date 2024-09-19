import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../core/constant.dart';

class BestCoursesList extends StatelessWidget {
  const BestCoursesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,childAspectRatio: 0.7
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all( 16),
          child:Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white54,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image(image: NetworkImage(Constants.imgList[index]),fit: BoxFit.fitWidth,),
                     ClipRRect(
                       borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16),topRight: Radius.circular(16)),
                       child: Positioned(
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: Constants.mainColor,
                          ),
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            child: Text(
                              '1${index}9EGP',
                              style: const TextStyle(color: Colors.white,fontSize: 14),
                            ),
                          ),
                        ),
                                           ),
                     )
                  ],
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
                  padding: EdgeInsets.all(10.0),
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
          )
        );
      },
    );
  }
}
