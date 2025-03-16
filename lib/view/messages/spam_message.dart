import 'package:flutter/widgets.dart';

class SpamMessage extends StatelessWidget {
  const SpamMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Image.asset("assets/images/indeed 8.jpg", height: 250),
          Text(
            textAlign: TextAlign.center,
            "You have no messages in the spam folder",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
