import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';
import 'package:super_bullet_list/bullet_list.dart';

class JobDetailsSheet extends StatelessWidget {
  final String jobTitle;
  final String location;
  final String salary;
  final List<String> jobDetails;
  final List<String> fullJobDetails;

  const JobDetailsSheet({
    super.key,
    required this.jobTitle,
    required this.location,
    required this.salary,
    required this.jobDetails,
    required this.fullJobDetails,
  });

  static void show(
    BuildContext context, {
    required String jobTitle,
    required String location,
    required String salary,
    required List<String> jobDetails,
    required List<String> fullJobDetails,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder:
          (_) => JobDetailsSheet(
            jobTitle: jobTitle,
            location: location,
            salary: salary,
            jobDetails: jobDetails,
            fullJobDetails: fullJobDetails,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.95,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.close, size: 28),
                  onPressed: () => Navigator.pop(context),
                ),

                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.share, size: 28),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.bookmark_border, size: 28),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 12),

            Text(
              jobTitle,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 6),

            Row(
              children: [
                const Icon(Icons.location_on, color: Colors.grey, size: 20),
                const SizedBox(width: 8),
                Text(
                  location,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Text("Salary: $salary", style: const TextStyle(fontSize: 16)),

            const SizedBox(height: 16),

            const Text(
              "Job Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...jobDetails.map(
              (detail) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(detail, style: const TextStyle(fontSize: 16)),
              ),
            ),

            const SizedBox(height: 16),
            Divider(),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.location_on, color: AppColor.grey),
                SizedBox(width: 10),
                Text(
                  "Kochi,Ernakulam",
                  style: TextStyle(color: AppColor.grey, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            const Text(
              "Full Job Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...fullJobDetails.map(
              (detail) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: SuperBulletList(
                  items: [
                    Text(detail, style: const TextStyle(fontSize: 16)),
                    Text(detail, style: const TextStyle(fontSize: 16)),
                    Text(detail, style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: AppColor.primary,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Center(
                child: Text(
                  'Apply Now',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
