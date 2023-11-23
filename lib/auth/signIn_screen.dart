import 'package:car_rental/auth/phone_verification.dart';
import 'package:car_rental/widgets/app_widgets.dart';
import 'package:car_rental/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  @override
  State createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height, minWidth: MediaQuery.of(context).size.width),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/splash1.png",
                    // height: 70,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 45.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/profile.png",
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, bottom: 30),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            "assets/language2.png",
                            // width: 80,
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),

                  _buildText( title: 'Sign in to your account'),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: buildCustomTextField1(hintText: "Email / Mobile Number"),
                  ),

                  CustomButton(
                    text: 'Sign In',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PhoneVerificationScreen(),
                        ),
                      );                        },
                  ),
                  _buildText( title: 'OR'),
                  _buildText( title: 'Connect with'),
                  Image.asset(
                    "assets/social.png",
                    // height: 70,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                  _buildText( title: 'Don’t have an account ? Sign up now!'),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  _buildText({
    required String title,
    double? size,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.beVietnamPro(
              fontSize: size ?? 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

