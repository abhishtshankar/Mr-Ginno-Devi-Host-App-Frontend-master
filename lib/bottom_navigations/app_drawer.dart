import 'package:car_rental/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final List<Map<String, String>> _drawerElements = [
    {
      'icon': 'assets/icons/employment_application.png',
      'title': 'Employment Application',
    },
    {
      'icon': 'assets/icons/group_notes.png',
      'title': 'Group Notes',
    },
    {
      'icon': 'assets/icons/training.png',
      'title': 'Training',
    },
    {
      'icon': 'assets/icons/assigned_patient.png',
      'title': 'Assigned Patient',
    },
    {
      'icon': 'assets/icons/time_off_request.png',
      'title': 'Time Off Request',
    },
    {
      'icon': 'assets/icons/time_sheet.png',
      'title': 'Time Sheet/Employee Schedule',
    },
    {
      'icon': 'assets/icons/employee_performance.png',
      'title': 'Employee Performance',
    },
    {
      'icon': 'assets/icons/employee_tracking.png',
      'title': 'Employee Tracking/ Upload',
    },
    {
      'icon': 'assets/icons/patient_chart.png',
      'title': 'Patient Chart',
    },
    {
      'icon': 'assets/icons/patient_vitals.png',
      'title': 'Patient Vitals',
    },
    {
      'icon': 'assets/icons/employee_tracking.png',
      'title': 'Patient Tracking',
    },
    {
      'icon': 'assets/icons/medication.png',
      'title': 'Medications',
    },
    {
      'icon': 'assets/icons/settings.png',
      'title': 'Settings',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close),
                  ),
                ),

                buildVSpacer(10),
                const Text(
                  'Jacob Smith',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                buildVSpacer(10),
                buildVSpacer(20),
                buildVSpacer(20),
                for (var elements in _drawerElements)
                  ListTile(
                    onTap: () {},

                    leading: Image.asset(
                      '${elements['icon']}',
                    ),
                    title: Text(
                      '${elements['title']}',
                    ),
                    titleTextStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: Colors.black.withOpacity(0.8)),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

