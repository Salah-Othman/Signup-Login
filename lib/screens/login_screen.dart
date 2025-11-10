import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_login/screens/signup_screen.dart';
import 'package:signup_login/widgets/buttom.dart';
import 'package:signup_login/widgets/field.dart';
import 'package:signup_login/widgets/screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          children: [
            Screen(
              title: 'Welcome Back!',
              titleFontSize: 30,
              description: 'Login',
            ),
            SizedBox(height: 16),
            Image.asset('assets/images/login.png'),
            SizedBox(height: 13),
            Field(controller: emailController, hint: 'Email'),
            SizedBox(height: 23),
            Field(controller: passwordController, hint: 'Password'),
            SizedBox(height: 1),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 0),
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 8,
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromRGBO(100, 195, 191, 1),
                  color: Color.fromRGBO(100, 195, 191, 1),
                ),
              ),
            ),
            SizedBox(height: 21),
            Bottom(ontap: () {}, text: 'Login'),
            SizedBox(height: 21),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By continuing you are agreeing our ',
                    style: GoogleFonts.poppins(
                      fontSize: 7,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'terms & conditions ',
                    style: GoogleFonts.poppins(
                      fontSize: 7,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(100, 195, 191, 1),
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromRGBO(100, 195, 191, 1),
                    ),
                  ),
                  TextSpan(
                    text: 'and our privacy polices ',
                    style: GoogleFonts.poppins(
                      fontSize: 7,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 0,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Color.fromRGBO(202, 202, 202, 1),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 7),
                Text(
                  'or signup with google',
                  style: GoogleFonts.poppins(
                    fontSize: 7,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(width: 7),
                Container(
                  height: 0,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Color.fromRGBO(202, 202, 202, 1),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 22),
            Bottom(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              text: 'Continue with Google',
            ),
            SizedBox(height: 9),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Don’t Have Account? ',
                    style: GoogleFonts.poppins(
                      fontSize: 7,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'Signup',
                    style: GoogleFonts.poppins(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(100, 198, 191, 1),
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromRGBO(100, 195, 191, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
