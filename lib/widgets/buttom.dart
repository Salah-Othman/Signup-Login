import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key, required this.text, required this.ontap});
  final String text;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 210,
        height: 40,
        decoration: BoxDecoration(
          color: Color.fromRGBO(100, 195, 191, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
