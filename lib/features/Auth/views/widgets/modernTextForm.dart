
import 'package:flutter/material.dart';

class ModernTextInput extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType ;
  final bool secureText;
  final IconData  icon;

  const ModernTextInput({super.key, required this.hintText, required this.keyboardType, required this.secureText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: TextField(
          keyboardType: keyboardType,
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          obscureText: secureText,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(

            labelText: hintText,
            labelStyle: const TextStyle(color: Colors.black54),
            filled: true,
            fillColor: Colors.white54,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            prefixIcon: null,
            suffixIcon:Icon(icon),
          ),
        ),
      ),
    );
  }
}
