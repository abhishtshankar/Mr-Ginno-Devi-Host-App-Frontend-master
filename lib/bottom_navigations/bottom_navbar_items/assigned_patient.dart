import 'package:car_rental/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import '../bottom_nav_bar.dart';

class AssignedPatient extends StatelessWidget {
  const AssignedPatient({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              leading: const BackButton(),
              title: const Text('ASSIGNED PATIENTS'),
            ),

            buildVSpacer(30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Patients that are assigned to Staff',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            buildVSpacer(30),
            SizedBox(
              height: size.height * 0.7,
              width: size.width,
              child: TabBarView(
                
                children: [
                 
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AppBottomNavBar(index: 3,),
                        ),
                      );
                    } ,
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
