import 'package:flutter/material.dart';
import 'package:super_bullet_list/bullet_list.dart';

class EmptyStateCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String buttonText;
  final String dialogTitle;
  final String dialogContent;
  final List<String> dialogBullets; // Changed to List
  final VoidCallback onContactPress;

  const EmptyStateCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.dialogTitle,
    required this.dialogContent,
    this.dialogBullets = const [],
    required this.onContactPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Image.asset(imagePath, height: 250),

          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),

          Text(
            description,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),

          TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder:
                    (context) => AlertDialog(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              dialogTitle,
                              maxLines: null,
                              softWrap: true,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(Icons.close),
                          ),
                        ],
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Dialog Content
                          Text(dialogContent),
                          const SizedBox(height: 20),

                          // Bullet List (only shows if not empty)
                          if (dialogBullets.isNotEmpty)
                            SuperBulletList(
                              items:
                                  dialogBullets
                                      .map((bullet) => Text(bullet))
                                      .toList(),
                            ),

                          Row(
                            children: [
                              const Text("Have questions?"),
                              TextButton(
                                onPressed: onContactPress,
                                child: const Text(
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
                    ),
              );
            },
            child: Text(
              buttonText,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
