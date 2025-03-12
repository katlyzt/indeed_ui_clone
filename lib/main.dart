import 'package:flutter/material.dart';
import 'package:indeed_clone/view/bottom_navigation.dart';

void main() {
  runApp(const IndeedClone());
}

class IndeedClone extends StatelessWidget {
  const IndeedClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}
