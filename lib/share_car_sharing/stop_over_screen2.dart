import 'package:car_rental/share_car_rental/rental_screen.dart';
import 'package:car_rental/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'package:car_rental/share_car_rental/rental_screen.dart';
import 'package:car_rental/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:timeline_tile/timeline_tile.dart';

// Import statements remain unchanged

class StopOverScreen2 extends StatefulWidget {
  @override
  _StopOverScreen2State createState() => _StopOverScreen2State();
}

class _StopOverScreen2State extends State<StopOverScreen2> {
  bool _switchValue = false;
  int _selectedRoute = 0; // Track the selected route
  bool _isChecked = false; // Track the state of the checkbox

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 10),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 120,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          StopOverScreen2(),
                    ),
                  );                       },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff245196), // Background color
                ),
                child: Text('Go', style: GoogleFonts.roboto(color: Colors.white,fontSize: 18, fontWeight: FontWeight.w600),),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 20, left: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            _buildTextHeader(title: 'Add Stopover to get\nmore Passengers', size: 18, fontWeight: FontWeight.w600),
            buildVSpacer(15),
            _buildTimelineTile(
              title: 'Tinfactory ,Bus Stop ,Bengaluru',
              fontWeight: FontWeight.w300,
              isFirst: true, // Set to true for the first timeline tile
            ),
            _buildTimelineTile(
              title: 'Petrol Station\nKolar',
              fontWeight: FontWeight.w500,
              isFirst: true, // Set to true for the first timeline tile
            ),
            _buildTimelineTile(
              title: 'Tinfactory ,Bus Stop ,Bengaluru',
              fontWeight: FontWeight.w300,
              isFirst: true, // Set to false for subsequent timeline tiles
              isLast: true,   // Set to true for the last timeline tile
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextHeader({
    required String title,
    double? size,
    FontWeight? fontWeight,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: size ?? 14,
            fontWeight: fontWeight ?? FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildTimelineTile({
    required String title,
    double? size,
    FontWeight? fontWeight,
    bool isFirst = false,
    bool isLast = false, // Add this parameter to check if it's the last timeline tile
  }) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: isFirst ? 0.15 : 0.5,
      indicatorStyle: IndicatorStyle(
        width: 15,
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 10.0,),
        indicatorXY: isFirst ? 0.15 : 0.5,
      ),
      endChild: Align(
        alignment: Alignment.centerLeft,
        child: ListTile(
          title: Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: fontWeight ?? FontWeight.w500,
              fontSize: size ?? 14,
            ),
          ),
        ),
      ),
      startChild: Container(
        height: double.infinity,
      ),
      isLast: isLast, // Pass the isLast parameter to the TimelineTile
    );
  }


}
