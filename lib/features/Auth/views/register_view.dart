import 'package:easy_academy/core/router.dart';
import 'package:easy_academy/features/Auth/views/widgets/formButton.dart';
import 'package:easy_academy/features/Auth/views/widgets/modernTextForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "ابدا الان رحلتك الممتعه !!",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const ModernTextInput(
              icon: CupertinoIcons.person,
              hintText: "اسم الطالب رباعي",
              keyboardType: TextInputType.name,
              secureText: false,
            ),
            const SizedBox(height:16),
            const ModernTextInput(
              icon:CupertinoIcons.phone,
              hintText: "رقم الهاتف",
              keyboardType: TextInputType.phone,
              secureText: false,
            ),
            const SizedBox(height: 16),
            const ModernTextInput(
              icon: CupertinoIcons.phone_arrow_down_left,
              hintText: "رقم هاتف ولي الامر",
              keyboardType: TextInputType.phone
              ,
              secureText: false,
            ),
            const SizedBox(height: 16),
            const ModernTextInput(
              icon: CupertinoIcons.lock,
              hintText: "كلمه السر",
              secureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 28),
            FormButton(onPressed: () {
              Navigator.pushReplacementNamed(context, AppRouter.home);
            }, buttonText: "انشاء حساب"),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
