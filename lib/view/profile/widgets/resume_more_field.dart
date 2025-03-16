import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';

class ResumeMoreField extends StatelessWidget {
  final String title;
  final String content;
  const ResumeMoreField({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 30)),
          ],
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColor.grey),
          ),
          child: Text(content, style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
