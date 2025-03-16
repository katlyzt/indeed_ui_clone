import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';

class ReadytoworkScreen extends StatefulWidget {
  const ReadytoworkScreen({super.key});

  @override
  State<ReadytoworkScreen> createState() => _ReadytoworkScreenState();
}

class _ReadytoworkScreenState extends State<ReadytoworkScreen> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Icon(Icons.menu), SizedBox(width: 15)]),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            titleText(), //ready to work
            SizedBox(height: 10),
            subtitleText(), //let employers know
            SizedBox(height: 30),
            availableSwitch(), //switch
            SizedBox(height: 30),
            saveButton(),
            SizedBox(height: 15),
            cancelButton(),
          ],
        ),
      ),
    );
  }

  SizedBox saveButton() {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: () {},
        child: Text(
          "Save",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  SizedBox cancelButton() {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColor.primary),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Cancel",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: AppColor.primary,
          ),
        ),
      ),
    );
  }

  Row availableSwitch() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Switch(
          activeColor: AppColor.primary,
          inactiveThumbColor: AppColor.grey,
          inactiveTrackColor: AppColor.lightGrey,
          value: isOn,
          onChanged: (bool value) {
            setState(() {
              isOn = value;
            });
          },
        ),
        SizedBox(width: 10),
        Text(
          "I'm available to start immediately",
          style: TextStyle(color: AppColor.grey, fontSize: 18),
        ),
      ],
    );
  }

  Text subtitleText() {
    return Text(
      "Let employers know that you can begin working straight away.",
      style: TextStyle(color: AppColor.grey, fontSize: 20),
    );
  }

  Text titleText() {
    return Text(
      "Ready to work",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
