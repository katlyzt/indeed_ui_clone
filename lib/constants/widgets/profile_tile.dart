import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.title,
    required this.content,
    required this.navigation,
  });
  final String title;
  final String content;
  final VoidCallback navigation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 13),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    softWrap: true,
                    maxLines: null,
                    content,
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                navigation();
              },
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
