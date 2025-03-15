import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';
import 'package:indeed_clone/view/homescreen/home_screen.dart';
import 'package:indeed_clone/view/messages/messages_screen.dart';
import 'package:indeed_clone/view/my_jobs/my_jobs_screen.dart';
import 'package:indeed_clone/view/profile/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<Widget> screens = [
    HomeScreen(),
    MyJobsScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: bottomNavigation(),
      body: screens[selectedIndex],
    );
  }

  BottomNavigationBar bottomNavigation() {
    return BottomNavigationBar(
      selectedItemColor: AppColor.primary,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (index) {
        selectedIndex = index;
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "My Jobs"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Messages"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Image.asset(
        "assets/images/pngwing.com.png",
        // height: 100,
        width: 100,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.notifications, size: 30, color: Colors.grey),
        ),
      ],
    );
  }
}
