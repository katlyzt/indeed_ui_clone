import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';

class PreferencesConstant extends StatelessWidget {
  const PreferencesConstant({
    super.key,
    required this.title,
    required this.subtitle,
    required this.items,
  });
  final String title;
  final String subtitle;
  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text(subtitle, style: TextStyle(color: AppColor.grey, fontSize: 20)),
        ...items.map(
          (item) => DividerItems(
            title: item["title"],
            content: item["content"],
            icon: item["icon"],
            navigation: item["navigation"],
          ),
        ),
      ],
    );
  }
}

class DividerItems extends StatelessWidget {
  const DividerItems({
    super.key,
    required this.title,
    required this.content,
    required this.icon,
    required this.navigation,
  });
  final String title;
  final List<String> content;
  final IconData icon;
  final VoidCallback navigation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Divider(),
        SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon, size: 40),
                  SizedBox(width: 20),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        ...content.map(
                          (item) => Text(
                            softWrap: true,
                            maxLines: null,
                            item,
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            IconButton(onPressed: navigation, icon: Icon(Icons.edit, size: 35)),
          ],
        ),
      ],
    );
  }
}
