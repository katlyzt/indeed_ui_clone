import 'package:flutter/widgets.dart';

class ArchiveMessage extends StatelessWidget {
  const ArchiveMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/indeed 6.jpg", height: 250),
          Text(
            textAlign: TextAlign.center,
            "You have no archived messages",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
