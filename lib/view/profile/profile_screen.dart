import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';
import 'package:indeed_clone/constants/widgets/profile_tile.dart';
import 'package:indeed_clone/view/profile/profile_details_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final List<Map<String, dynamic>> profileTiles = [
    {
      "title": 'Qualification',
      "content": 'Highlight your skills and experience.',
      "navigation": () {},
    },
    {
      "title": 'Job preferences',
      "content": 'Save specific details like minimum desired pay and schedule.',
      "navigation": () {},
    },
    {
      "title": 'Hide jobs with these details',
      "content":
          'Manage the qualifications or preferences used to hide jobs from your search.',
      "navigation": () {},
    },
    {
      "title": 'Ready to work',
      "content":
          'Let employees know that you are available to start working as soon as possible.',
      "navigation": () {},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            profileName(),
            detailsSection(context),
            SizedBox(height: 40),
            Text(
              "Resume",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ), //resume
            SizedBox(height: 10),
            resumeContainer(context),
            SizedBox(height: 30),
            Text(
              "Improve your job matches",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ), //Improve your job matches
            SizedBox(height: 10),
            Divider(),
            Column(
              children:
                  profileTiles.map((tile) {
                    return ProfileTile(
                      title: tile["title"],
                      content: tile["content"],
                      navigation: tile["navigation"],
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  //the container that has resume details/ navigation
  Container resumeContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColor.grey, width: 1.5),
      ),
      child: Row(
        children: [
          Icon(Icons.description, size: 80, color: AppColor.primary),
          Expanded(
            child: Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Indeed resume",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Updated 25 February 2025",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: AppColor.grey,
                  ),
                ),
                Row(
                  spacing: 2,
                  children: [
                    Icon(Icons.visibility, color: AppColor.grey),
                    Text(
                      "Searchable",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: AppColor.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(onTap: () {}, child: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }

  //contact/communication details
  Widget detailsSection(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            spacing: 8,
            children: [
              Row(
                spacing: 10,
                children: [
                  Icon(Icons.mail, color: AppColor.grey),
                  Text(
                    "contact@email.com",
                    style: TextStyle(color: AppColor.grey, fontSize: 20),
                  ),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Icon(Icons.call, color: AppColor.grey),
                  Text(
                    "123 321 654 78",
                    style: TextStyle(color: AppColor.grey, fontSize: 20),
                  ),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Icon(Icons.location_on, color: AppColor.grey),
                  Text(
                    "Kochi, Kerala",
                    style: TextStyle(color: AppColor.grey, fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileDetailsScreen()),
            );
          },
          child: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  //the main header, profile name
  Widget profileName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "John Doe",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          CircleAvatar(
            backgroundColor: Color(0xFF424242),
            radius: 50,
            child: Text(
              "JD",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
