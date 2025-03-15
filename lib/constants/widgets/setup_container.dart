import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';

class DeviceSetupCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String buttonLabel;
  final VoidCallback onTap;

  const DeviceSetupCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.buttonLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 10),

          // Description and Image
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Text(
                  description,
                  maxLines: null,
                  softWrap: true,
                  style: TextStyle(color: AppColor.grey, fontSize: 20),
                ),
              ),
              Image.asset(imagePath, height: 100),
            ],
          ),
          const SizedBox(height: 10),

          // Button with Arrow
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Text(
                  buttonLabel,
                  style: TextStyle(
                    color: AppColor.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Icon(Icons.arrow_forward, color: AppColor.primary, size: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
