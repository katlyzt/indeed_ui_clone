import 'package:flutter/widgets.dart';
import 'package:indeed_clone/constants/colors/colors.dart';

class SubmitParagraph extends StatelessWidget {
  const SubmitParagraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "By submitting the form with this box ticked, you confirm that you are the primary user and subscriber to the telephone number provided, and you agree to recieve calls (including using artificial or pre-recorded voice), texts and WhatsApp messages from Indeed and employers who use Indeed on the telephone number provided above.",
      style: TextStyle(color: AppColor.grey, fontSize: 16),
    );
  }
}
