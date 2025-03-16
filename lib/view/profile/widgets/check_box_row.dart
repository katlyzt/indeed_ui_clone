import 'package:flutter/material.dart';
import 'package:indeed_clone/constants/colors/colors.dart';

class CheckboxRow extends StatefulWidget {
  final String label;
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const CheckboxRow({
    required this.label,
    required this.isChecked,
    required this.onChanged,
    super.key,
  });

  @override
  State<CheckboxRow> createState() => _CheckboxRowState();
}

class _CheckboxRowState extends State<CheckboxRow> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
            widget.onChanged(value);
          },
          activeColor: AppColor.primary,
        ),
        Text(widget.label, style: const TextStyle(fontSize: 15)),
      ],
    );
  }
}
