import 'package:flutter/widgets.dart';
import 'package:indeed_clone/constants/widgets/contactinfo_textfield.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactinfoTextfield(fieldTitle: "Street Address"),
        ContactinfoTextfield(fieldTitle: "City,State"),
        ContactinfoTextfield(fieldTitle: "Pincode"),
      ],
    );
  }
}
