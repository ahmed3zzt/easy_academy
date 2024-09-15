import 'package:easy_academy/core/constant.dart';
import 'package:easy_academy/features/Auth/views/widgets/formButton.dart';
import 'package:easy_academy/features/Auth/views/widgets/modernTextForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "مرحبا بك مجددا !!",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 28),
            const ModernTextInput(
              icon:CupertinoIcons.phone,
              keyboardType: TextInputType.phone,
              secureText: false,
              hintText: "رقم الهاتف",
            ),
            const SizedBox(height: 28),
            const ModernTextInput(
              icon:CupertinoIcons.lock,
              hintText: "كلمه السر",
              secureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 32),
            FormButton(onPressed: () {}, buttonText: "تسجيل الدخول"),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
