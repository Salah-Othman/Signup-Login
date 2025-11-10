import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen extends StatelessWidget {
  const Screen({
    super.key,
    required this.title,
    required this.description,
    required this.titleFontSize,
  });
  final String title;
  final String description;
  final double titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 126,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/top.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 45),
        Text(
          title,
          style: GoogleFonts.inter(
            fontSize: titleFontSize,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(100, 195, 191, 1),
          ),
        ),
        Text(
          description,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ],
    );
  }
}
