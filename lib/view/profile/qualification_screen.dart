import 'package:flutter/material.dart';
import 'package:indeed_clone/view/profile/widgets/preferences_constant.dart';

class QualificationScreen extends StatelessWidget {
  const QualificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              PreferencesConstant(
                title: "Qualifcations",
                subtitle:
                    "We use these details to show you jobs that match your unique skills and expericence",
                items: [
                  {
                    "title": "Education",
                    "content": ["Bachelor's Degree"],
                    "icon": Icons.school,
                    "navigation": () {},
                  },
                  {
                    "title": "Skills",
                    "content": ["Skill 1", "Skill 2", "Skill 3"],
                    "icon": Icons.emoji_events,
                    "navigation": () {},
                  },
                  {
                    "title": "Language",
                    "content": ["English"],
                    "icon": Icons.language,
                    "navigation": () {},
                  },
                  {
                    "title": "Work Experience",
                    "content": ["Work experience 1", "Work experience 2"],
                    "icon": Icons.work,
                    "navigation": () {},
                  },
                  {
                    "title": "Certifications",
                    "content": [
                      "Google Cloud Professional",
                      "AWS Certified Developer",
                      "Flutter Certified Developer",
                    ],
                    "icon": Icons.verified,
                    "navigation": () {},
                  },
                  {
                    "title": "Projects",
                    "content": [
                      "Job Portal App - Flutter, Firebase",
                      "AI Chatbot - Python, TensorFlow",
                      "E-commerce App - Flutter, Stripe",
                    ],
                    "icon": Icons.assignment,
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
