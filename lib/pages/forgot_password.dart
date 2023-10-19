import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'otp_ver.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPassword_inState();
}

class _ForgotPassword_inState extends State<ForgotPassword> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool? _isChecked = true;

  void _toggleCheckbox(bool? newValue) {
    setState(() {
      _isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forgot Password",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF3A3A3A),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Enter your email address",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Email Address",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFA7A7A7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFA7A7A7), width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFA7A7A7), width: 1.0),
                        ),
                        hintText: 'nwaezeken@gmail.com',
                        hintStyle: GoogleFonts.roboto(
                            color: Color(0xFFCFCFCF),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.3,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 47,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AuthCodePage(number: '',),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xFF0560FA)),
                        child: Center(
                          child: Text(
                            "Send OTP",
                            style: GoogleFonts.roboto(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Remember password? Back to ',
                      style: GoogleFonts.roboto(
                          color: Color(0xFFA7A7A7),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: 'Sign in',
                      style: GoogleFonts.roboto(
                          color: Color(0xFF0560FA),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
