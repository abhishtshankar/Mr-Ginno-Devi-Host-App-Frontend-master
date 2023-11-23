import 'package:car_rental/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppBar(
              leading: const BackButton(),
              title: const Text('PROFILE'),
              actions: <Widget>[
                GestureDetector(
                  onTap: () {

                  },
                  child: Transform.scale(
                    scale: 1.5,
                    child: Image.asset(
                      'assets/icons/fill_details.png',
                    ),
                  ),
                ),
                buildHSpacer(18),
              ],
            ),
            buildVSpacer(30),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/profile.png',),
                ),
              ),
            ),
            buildVSpacer(10),
            const Text(
              'Jacob Smith',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                decoration: TextDecoration.none
              ),
            ),
            buildVSpacer(10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'STATUS : ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                        decoration: TextDecoration.none
                    ),
                  ),
                  const TextSpan(
                    text: 'Doctor',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                        decoration: TextDecoration.none,
                        color: Color(0xFF4DAF4E),
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                      color: Colors.black,
                      decoration: TextDecoration.none
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
            for (var elements in _PIdata)
              _buildPItiles(
                  header: elements['header'] as String,
                  value: elements['value'] as String),
          ],
        ),
      ),
    );
  }

  final List<Map<String, String>> _PIdata = [
    {
      'header': 'DATE OF BIRTH :',
      'value': 'DD/MM/YYYY',
    },
    {
      'header': 'AGE :',
      'value': '32 YEARS',
    },
    {
      'header': 'GENDER',
      'value': 'MALE',
    },
    {
      'header': 'EMAIL : :',
      'value': 'loremipsum@gmail.com',
    },
    {
      'header': 'CONTACT NO. :',
      'value': '(+91) 1234567890S',
    },
    {
      'header': 'ADDRESS :',
      'value': 'A-190, 7th Block, XYZ Street, California, New Jersey, USA',
    },
  ];

  Container _buildPItiles({required String header, required String value}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 37, vertical: 18),
      // height: 87,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/icons/calendar.png',
          ),
          buildHSpacer(10),
          Text(
            header,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              color: Colors.black.withOpacity(0.6),
                decoration: TextDecoration.none
            ),
          ),
          buildHSpacer(5),
          Expanded(
            child: Text(
              value,
              maxLines: 2,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                  decoration: TextDecoration.none,
                  color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
