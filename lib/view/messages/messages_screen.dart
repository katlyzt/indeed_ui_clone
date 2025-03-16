import 'package:flutter/material.dart';
import 'package:indeed_clone/view/messages/archive_message.dart';
import 'package:indeed_clone/view/messages/inbox_message.dart';
import 'package:indeed_clone/view/messages/spam_message.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  String? selectedValue;
  @override
  void initState() {
    super.initState();
    selectedValue = "Inbox";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownMenu(
          width: double.infinity,
          hintText: selectedValue,
          dropdownMenuEntries: const [
            DropdownMenuEntry(value: "Inbox", label: "Inbox"),
            DropdownMenuEntry(value: "Archive", label: "Archive"),
            DropdownMenuEntry(value: "Spam", label: "Spam"),
          ],
          onSelected: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
        SizedBox(height: 5),
        Divider(),

        //
        if (selectedValue == "Inbox") const InboxMessage(),
        if (selectedValue == "Archive") const ArchiveMessage(),
        if (selectedValue == "Spam") const SpamMessage(),
      ],
    );
  }
}
