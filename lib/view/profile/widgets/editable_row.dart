import 'package:flutter/material.dart';

class EditableRow extends StatelessWidget {
  final String label;
  final String actionLabel;
  final VoidCallback onTap;

  const EditableRow({
    required this.label,
    required this.actionLabel,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontSize: 15)),
        TextButton(
          onPressed: onTap,
          child: Row(
            children: [
              Text(
                actionLabel,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ],
    );
  }
}
