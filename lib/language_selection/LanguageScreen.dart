import 'dart:async';
import 'package:car_rental/auth/signIn_screen.dart';
import 'package:car_rental/language_selection/widget/custom_language.dart';
import 'package:car_rental/widgets/app_widgets.dart';
import 'package:car_rental/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  @override
  State createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animationController.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                    Image.asset(
                      "assets/language.png",
                      // height: 70,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomLanguage(
                            title: 'English',
                            subtitle: 'ENGLISH',
                            text: 'A',
                          ),
                          buildHSpacer(10),
                          CustomLanguage(
                            title: 'हिंदी',
                            subtitle: 'HINDI',
                            text: 'आ',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomLanguage(
                            title: 'मराठी',
                            subtitle: 'MARATHI',
                            text: 'म',
                          ),
                          buildHSpacer(10),
                          CustomLanguage(
                            title: 'ਪੰਜਾਬੀ',
                            subtitle: 'PUNJABI',
                            text: 'ਪੰ',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomLanguage(
                            title: 'ಕನ್ನಡ',
                            subtitle: 'KANNAD',
                            text: 'ಕ',
                          ),
                          buildHSpacer(10),
                          CustomLanguage(
                            title: 'Others',
                            subtitle: 'OTHERS',
                            text: 'आ - A',
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: 'Let s Go!',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ),
                        );                    },
                    ),
                    buildVSpacer(20)

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

