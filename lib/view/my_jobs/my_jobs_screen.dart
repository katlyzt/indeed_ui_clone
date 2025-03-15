import 'package:flutter/material.dart';
import 'package:indeed_clone/view/bottom_navigation.dart';
import 'package:indeed_clone/view/homescreen/home_screen.dart';

class MyJobsScreen extends StatelessWidget {
  const MyJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Text("Saved"),
              Text("Applied"),
              Text("Interviews"),
              Text("Archived"),
            ],
          ),
          Text(
            "No Jobs saved yet",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            "Jobs you save appear here",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          textButton(context),
          elevatedButton(context),
        ],
      ),
    );
  }

  //find jjobs button
  ElevatedButton elevatedButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigation()),
        );
      },
      child: Row(
        children: [
          Text(
            "Find jobs",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }

  //not seeing a job?
  TextButton textButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder:
              (context) => AlertDialog(
                content: Column(
                  children: [
                    Text(
                      "To keep things tidy we remove saved jobs that are older than 6 months.",
                    ),
                    Row(
                      children: [
                        Text("Have question?"),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Contact us",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Not seeing a job?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close),
                    ),
                  ],
                ),
              ),
        );
      },
      child: Text(
        "Not seeing a job?",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
