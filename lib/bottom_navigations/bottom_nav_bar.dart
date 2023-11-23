import 'package:car_rental/bottom_navigations/app_drawer.dart';
import 'package:car_rental/bottom_navigations/profile.dart';
import 'package:flutter/material.dart';

import 'bottom_navbar_items/assigned_patient.dart';
import 'bottom_navbar_items/employment_information.dart';
import 'bottom_navbar_items/home.dart';

class AppBottomNavBar extends StatefulWidget {
  int? index;
AppBottomNavBar({
  this.index,
    super.key,
  });

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _body = [
    const Home(),
    EmploymentInfo(),
    const AssignedPatient(),
    Profile(),
  ];
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = widget.index??0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      body: _body[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 10,
              offset: const Offset(0, -10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: (_selectedIndex == 0)
                    ? Image.asset('assets/home_selected.png')
                    : Image.asset('assets/home_unselected.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 1)
                    ? Image.asset('assets/booking_selected.png')
                    : Image.asset(
                        'assets/booking_unselected.png'),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 2)
                    ? Image.asset('assets/car_selected.png')
                    : Image.asset(
                        'assets/car_unselected.png'),
                label: 'Your Car',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 3)
                    ? Image.asset('assets/earning_selected.png')
                    : Image.asset('assets/earning_unselected.png'),
                label: 'Earnings',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 4)
                    ? Image.asset('assets/profile_selected.png')
                    : Image.asset('assets/profile_unselected.png'),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
