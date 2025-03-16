import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';
import 'package:indeed_clone/constants/widgets/empty_state_card.dart';
import 'package:indeed_clone/constants/widgets/setup_container.dart';
import 'package:indeed_clone/view/bottom_navigation.dart';

class MyJobsScreen extends StatelessWidget {
  const MyJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          SizedBox(height: 10),
          _buildTabBar(),
          Expanded(child: _buildTabBarView(context)),
        ],
      ),
    );
  }

  // tab bar
  Widget _buildTabBar() {
    return TabBar(
      labelColor: AppColor.primary,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      tabs: const [
        Text("Saved", style: TextStyle(fontSize: 15)),
        Text("Applied", style: TextStyle(fontSize: 15)),
        Text("Interviews", style: TextStyle(fontSize: 15)),
        Text("Archived", style: TextStyle(fontSize: 15)),
      ],
    );
  }

  // tab bar view
  Widget _buildTabBarView(BuildContext context) {
    return TabBarView(
      children: [
        _savedTab(context),
        _appliedTab(context),
        _interviewTab(context),
        _archivedTab(context),
      ],
    );
  }

  // saved tab
  Widget _savedTab(BuildContext context) {
    return Column(
      children: [
        EmptyStateCard(
          imagePath: "assets/images/indeed.jpg",
          title: "No jobs saved yet",
          description: "Jobs you save appear here",
          buttonText: "Not seeing a job?",
          dialogTitle: "Not seeing an application?",
          dialogContent:
              "To keep things tidy, we remove archived applications that are older than 6 months.",
          onContactPress: () {},
        ),

        const SizedBox(height: 20),

        // Find Jobs Button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => BottomNavigation()),
            );
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
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
        ),
      ],
    );
  }

  // applied tab
  Widget _appliedTab(BuildContext context) {
    return Column(
      children: [
        EmptyStateCard(
          imagePath: "assets/images/indeed 2.jpg",
          title: "No application yet",
          description: "Keep track of job application here",
          buttonText: "Not seeing an application?",
          dialogTitle: "Not seeing an application?",
          dialogContent:
              "To keep things tidy, we remove archived applications that are older than 6 months.",
          onContactPress: () {},
          dialogBullets: [
            "Application completed outside of Indeed",
            "Application completed using a different Indeed account or email address",
            "Applications completed more than 6 months",
          ],
        ),
        const SizedBox(height: 20),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => BottomNavigation()),
            );
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
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
        ),
      ],
    );
  }

  // interview tab
  Widget _interviewTab(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmptyStateCard(
              imagePath: "assets/images/indeed 3.jpg",
              title: "No interview yet",
              description: "Keep track of job application here",
              buttonText: "Not seeing an application?",
              dialogTitle: "Not seeing an application?",
              dialogContent:
                  "To keep things tidy, we remove archived applications that are older than 6 months.",
              onContactPress: () {},
            ),
            SizedBox(height: 10),
            Text(
              "Interview services",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),

            SizedBox(height: 20),

            DeviceSetupCard(
              title: "Set up device for interview",
              description: "Test your camera and microphone ahead of time",
              imagePath: "assets/images/indeed 4.jpg",
              buttonLabel: "Test your device",
              onTap: () {},
            ),
            SizedBox(height: 20),
            DeviceSetupCard(
              title: "Practice with a coach",
              description:
                  "Improve your interview skills and get advice from an expert",
              imagePath: "assets/images/indeed 4.jpg",
              buttonLabel: "Book a session",
              onTap: () {},
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // archived tab
  Widget _archivedTab(BuildContext context) {
    return Column(
      children: [
        EmptyStateCard(
          imagePath: "assets/images/indeed 6.jpg",
          title: "Nothing yet",
          description: "Applications you archive appear here",
          buttonText: "Not seeing an archived application?",
          dialogTitle: "Not seeing an archived application?",
          dialogContent:
              "To keep things tidy, we remove archived applications that are older than 6 months.",
          onContactPress: () {},
        ),
      ],
    );
  }
}
