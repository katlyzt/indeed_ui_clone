import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/widgets/job_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [searchBar(), titleText(), JobCard()],
      ),
    );
  }

  Column titleText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Jobs for you",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Text(
            "Jobs based on your actitvity on Indeed",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  IntrinsicHeight searchBar() {
    return IntrinsicHeight(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 35),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Colors.black26,
              offset: Offset(0, 5),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                hintText: "Job title, keyword, or company",
              ),
            ),

            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.location_on, color: Colors.black),

                hintText: "kochi, kerala",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
