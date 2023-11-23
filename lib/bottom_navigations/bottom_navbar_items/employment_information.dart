import 'package:car_rental/widgets/app_widgets.dart';
import 'package:flutter/material.dart';


class EmploymentInfo extends StatelessWidget {
  EmploymentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppBar(
            leading: const BackButton(),
            title: const Text('EMPLOYMENT INFORMATION'),
          ),
          buildVSpacer(20),

          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Text(
              'Uploaded Documents Below :',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          buildVSpacer(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Wrap(
              spacing: 12,
              runSpacing: 18,
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                    ],
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
