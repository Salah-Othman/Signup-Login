import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_login/widgets/Field.dart';
import 'package:signup_login/widgets/buttom.dart';
import 'package:signup_login/widgets/screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController fNameController = TextEditingController();
    final TextEditingController lNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController crPasswordController = TextEditingController();
    final TextEditingController coPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Screen(
                title: 'Create Account',
                description: 'Enter your Personal Data',
                titleFontSize: 30,
              ),
              Positioned(
                top: 35,
                left: 32,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 41),
          Field(controller: fNameController, hint: 'First Name'),
          SizedBox(height: 9.5),
          Field(controller: lNameController, hint: 'Last Name'),
          SizedBox(height: 9.5),
          Field(controller: emailController, hint: 'Email'),
          SizedBox(height: 9.5),
          Field(controller: phoneController, hint: 'Phone Number'),
          SizedBox(height: 9.5),
          Field(controller: crPasswordController, hint: 'Create Password'),
          SizedBox(height: 9.5),
          Field(controller: coPasswordController, hint: 'Confirm Password'),
          SizedBox(height: 14),
          Bottom(ontap: () {}, text: 'Signup'),
          SizedBox(height: 14),
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
          SizedBox(height: 17),
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
          SizedBox(height: 27),
          Bottom(ontap: () {}, text: 'Continue with Google'),
          SizedBox(height: 10),
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
    );
  }
}
