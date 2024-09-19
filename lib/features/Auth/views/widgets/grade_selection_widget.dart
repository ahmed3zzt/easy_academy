import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradeSelectionWidget extends StatefulWidget {
  const GradeSelectionWidget({super.key});

  @override
  _GradeSelectionWidgetState createState() => _GradeSelectionWidgetState();
}

class _GradeSelectionWidgetState extends State<GradeSelectionWidget> {
  String? selectedGrade;

  final List<String> grades = [
    'الصف الثالث الثانوي',
    'الصف الثاني الثانوي',
    'الصف الاول الثانوي',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
        color: Colors.white54,
      ),
      padding: EdgeInsets.all(5),

      child: Directionality(
        textDirection: TextDirection.rtl,
        child: DropdownButton<String>(
          elevation: 0,
          underline: const SizedBox(),
          borderRadius: BorderRadius.circular(16),
          dropdownColor: Colors.white,
          style:  TextStyle(color: Colors.black54, fontSize: 18,fontFamily: GoogleFonts.rakkas().fontFamily),
          value: selectedGrade,
          hint: const Text('اختر الصف'),
          isExpanded: true,
          onChanged: (String? newValue) {
            setState(() {
              selectedGrade = newValue;
            });
          },
          items: grades.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}