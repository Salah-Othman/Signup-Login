import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_login/screens/login_screen.dart';
import 'package:signup_login/screens/signup_screen.dart';
import 'package:signup_login/widgets/screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          children: [
            Screen(
              title: 'Welcome!',
              description: 'Find the things that you Love!',
              titleFontSize: 40,
            ),
            SizedBox(height: 67),
            Image.asset('assets/images/welcome.png'),
            SizedBox(height: 52),
            GestureDetector(
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => SignupScreen()));
              },
              child: Container(
                width: 199,
                height: 38,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(100, 195, 191, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 21),
            GestureDetector(
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                width: 199,
                height: 38,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromRGBO(100, 195, 191, 1)),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(100, 195, 191, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
