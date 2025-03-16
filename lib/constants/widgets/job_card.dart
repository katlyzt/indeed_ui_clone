import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';

class JobCard extends StatefulWidget {
  final String jobTitle;
  final String company;
  final double rating;
  final String location;
  final String salaryRange;
  final List<String> tags;
  final String applyText;
  final String activeStatus;
  final VoidCallback nav;

  const JobCard({
    super.key,
    required this.jobTitle,
    required this.company,
    required this.rating,
    required this.location,
    required this.salaryRange,
    required this.tags,
    required this.applyText,
    required this.activeStatus,
    required this.nav,
  });

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.nav,

      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColor.grey),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Colors.black26,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// === LEFT SIDE ===
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Job Title
                  Text(
                    widget.jobTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 4),

                  /// Company Name + Rating
                  Row(
                    children: [
                      Text(
                        widget.company,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        widget.rating.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                    ],
                  ),
                  const SizedBox(height: 4),

                  /// Location
                  Text(
                    widget.location,
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 6),

                  /// Salary Range
                  _buildTag(
                    text: widget.salaryRange,
                    backgroundColor: AppColor.greenContainer,
                    textColor: AppColor.greenText,
                  ),

                  const SizedBox(height: 6),

                  /// Tags (e.g., Part-time, Remote)
                  Wrap(
                    spacing: 6,
                    children:
                        widget.tags.map((tag) {
                          return _buildTag(
                            text: tag,
                            backgroundColor: AppColor.lightGrey,
                            textColor: Colors.black87,
                          );
                        }).toList(),
                  ),

                  const SizedBox(height: 6),

                  /// Apply Text
                  Row(
                    children: [
                      Icon(Icons.send, color: AppColor.primary, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        widget.applyText,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  const SizedBox(height: 4),

                  /// Active Status
                  Text(
                    widget.activeStatus,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),

            /// === RIGHT SIDE ===
            Column(
              children: [
                /// Bookmark Icon (Toggle)
                IconButton(
                  onPressed: () {
                    setState(() {
                      isBookmarked = !isBookmarked;
                    });
                  },
                  icon: Icon(
                    isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
                    color:
                        isBookmarked
                            ? AppColor.primary
                            : Colors.black87, // Toggle color
                    size: 32,
                  ),
                ),

                /// Block Icon
                const Icon(Icons.block, size: 32),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// === Reusable Tag Builder ===
  Widget _buildTag({
    required String text,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
