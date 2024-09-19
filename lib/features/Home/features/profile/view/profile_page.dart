import 'package:easy_academy/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الملف الشخصي"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Constants.mainColor,
                ),
                child: const Center(
                  child: Text(
                    "احمد",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: [
                  ProfileBtn(
                    onTap: () {},
                    title: "تعديل الملف الشخصي",
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  ProfileBtn(
                    onTap: () {},
                    title: "تغيير كلمة المرور",
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: [
                  ProfileBtn(
                    onTap: () {},
                    title: "تعديل المرحله التعليميه",
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  ProfileBtn(
                    onTap: () {},
                    title: "تسجيل خروج",
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileBtn(
              onTap: () {},
              title: 'معلومات عنا',
              width: MediaQuery.of(context).size.width * 0.85,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const Text(
              " جميع الحقوق محفوظة لـ @EasyAcademy, Ahmed Ezz",
              style: TextStyle(fontSize: 16),
              textDirection: TextDirection.rtl,
            )
          ],
        ),
      ),
    );
  }
}

class ProfileBtn extends StatelessWidget {
  const ProfileBtn(
      {super.key,
      required this.onTap,
      required this.title,
      required this.width});

  final void Function() onTap;

  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: width,
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white54,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: Text(title),
        ),
      ),
    );
  }
}
