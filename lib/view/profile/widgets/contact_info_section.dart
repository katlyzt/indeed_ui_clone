import 'package:flutter/widgets.dart';
import 'package:indeed_clone/constants/widgets/contactinfo_textfield.dart';
import 'package:indeed_clone/view/profile/widgets/check_box_row.dart';
import 'package:indeed_clone/view/profile/widgets/title_text.dart';

class ContactInfoSection extends StatelessWidget {
  const ContactInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText("Contact Information"),
        const SizedBox(height: 10),
        ContactinfoTextfield(fieldTitle: "First name"),
        ContactinfoTextfield(fieldTitle: "Last name"),
        ContactinfoTextfield(fieldTitle: "Headline"),
        ContactinfoTextfield(fieldTitle: "Phone"),
        CheckboxRow(
          label: "Show my number on Indeed",
          isChecked: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
