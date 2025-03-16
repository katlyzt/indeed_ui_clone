import 'package:flutter/material.dart';
import 'package:indeed_clone/view/profile/widgets/custom_drawer.dart';
import 'package:indeed_clone/view/profile/widgets/preferences_constant.dart';

class JobPreferencesScreen extends StatelessWidget {
  const JobPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              PreferencesConstant(
                title: "Job Preferences",
                subtitle:
                    "Tell us the job details you're interested in to get better recommendations across Indeed. \nEmployers may see these preferences when your resume is set to searchable.",
                items: [
                  {
                    "title": "Job titles",
                    "content": ["Flutter developer"],
                    "icon": Icons.person_2_outlined,
                    "navigation": () {},
                  },
                  {
                    "title": "Job types",
                    "content": [
                      "Part-time",
                      "Fresher",
                      "Temporary/Contractual"
                          "Freelance",
                      "Full-time",
                    ],
                    "icon": Icons.business_center_outlined,
                    "navigation": () {},
                  },
                  {
                    "title": "Work schedule",
                    "content": ["Monday to Friday", "Morning shift"],
                    "icon": Icons.schedule,
                    "navigation": () {},
                  },
                  {
                    "title": "Minimum base pay",
                    "content": ["₹ 25,000 per month"],
                    "icon": Icons.payments,
                    "navigation": () {},
                  },
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
