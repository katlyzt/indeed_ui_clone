import 'package:flutter/material.dart';
import 'package:indeed_clone/view/profile/widgets/address_info.dart';
import 'package:indeed_clone/view/profile/widgets/check_box_row.dart';
import 'package:indeed_clone/view/profile/widgets/contact_info_section.dart';
import 'package:indeed_clone/view/profile/widgets/editable_row.dart';
import 'package:indeed_clone/view/profile/widgets/save_button.dart';
import 'package:indeed_clone/view/profile/widgets/submit_paragraph.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [Icon(Icons.menu)]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContactInfoSection(),
            const SizedBox(height: 20),
            EditableRow(
              label: "example@contact.gmail",
              actionLabel: "Edit",
              onTap: () {},
            ),
            const SizedBox(height: 10),
            EditableRow(label: "India", actionLabel: "Change", onTap: () {}),
            const SizedBox(height: 10),
            SubmitParagraph(),
            AddressInfo(),
            const SizedBox(height: 20),
            CheckboxRow(
              label: "Yes, I am willing to relocate",
              isChecked: true,
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),
            SaveButton(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
