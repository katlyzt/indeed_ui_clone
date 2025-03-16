import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';
import 'package:indeed_clone/view/profile/widgets/custom_drawer.dart';
import 'package:indeed_clone/view/profile/widgets/resume_more_field.dart';

class ResumeMore extends StatelessWidget {
  const ResumeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Builder(
            builder:
                (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: Icon(Icons.menu),
                ),
          ),
          SizedBox(width: 10),
        ],
      ),
      endDrawer: CustomDrawer(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchableContainer(),
              SizedBox(height: 10),
              nameText(),
              detailsText(),
              ResumeMoreField(
                title: "Summary",
                content: "Your personal information will appear here",
              ),
              ResumeMoreField(
                title: "Personal informaton",
                content: "Your personal information will appear here",
              ),
              ResumeMoreField(
                title: "Current salary details",
                content: "Your current salary will appear here",
              ),
              ResumeMoreField(
                title: "Work experience",
                content: "Your work experience will appear here",
              ),
              ResumeMoreField(
                title: "Education",
                content: "Your education details will appear here",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column detailsText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "123 321 45 87",
          style: TextStyle(color: AppColor.grey, fontSize: 20),
        ),
        Text(
          "example@gmail.com",
          style: TextStyle(color: AppColor.grey, fontSize: 20),
        ),
        Text(
          "Kochi, Ernakulam",
          style: TextStyle(color: AppColor.grey, fontSize: 20),
        ),
      ],
    );
  }

  Row nameText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "John Doe",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.edit, size: 30)),
      ],
    );
  }

  Widget searchableContainer() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColor.grey),
        ),
        child: IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.remove_red_eye, size: 30),
              SizedBox(width: 5),
              Text(
                "Searchable",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              VerticalDivider(color: Colors.black),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ],
          ),
        ),
      ),
    );
  }
}
