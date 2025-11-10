import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Field extends StatelessWidget {
  const Field({super.key, required this.controller, required this.hint});
  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color.fromRGBO(100, 195, 191, 1), width: 2),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),

            hintText: hint,
            hintStyle: GoogleFonts.poppins(
              color: Color.fromRGBO(172, 167, 167, 1),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        ),
      ),
    );
  }
}
