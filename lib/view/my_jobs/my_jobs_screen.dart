import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';
import 'package:indeed_clone/view/bottom_navigation.dart';

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
          Expanded(
            child: TabBarView(
              children: [
                _savedTabs(context),
                _appliedTab(),
                _interViewTab(),
                _archivedTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //saved jobs tab contents
  Widget _savedTabs(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/indeed.jpg", height: 250),
        Text(
          "No Jobs saved yet",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(height: 10),
        Text(
          "Jobs you save appear here",
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        SizedBox(height: 10),
        textButton(context),
        SizedBox(height: 20),
        elevatedButton(context),
      ],
    );
  }

  //applied jobs tab contents
  Widget _appliedTab() {
    return Column();
  }

  //interview tab contents
  Widget _interViewTab() {
    return Column();
  }

  Widget _archivedTab() {
    return Column();
  }

  //find jobs button
  ElevatedButton elevatedButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigation()),
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Find jobs",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
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
                  mainAxisSize: MainAxisSize.min,
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
