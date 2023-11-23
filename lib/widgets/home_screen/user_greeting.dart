import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserGreeting extends StatefulWidget {
  String userFirstName;
  String greetingSubtext;

  UserGreeting({
    super.key,
    required this.userFirstName,
    required this.greetingSubtext,
  });

  @override
  State<UserGreeting> createState() => _UserGreetingState();
}

class _UserGreetingState extends State<UserGreeting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi ${widget.userFirstName}!",
            style: hiUserTextStyle,
          ),
          Text(
            widget.greetingSubtext,
            style: sublineTextStyle,
          ),
        ],
      ),
    );
  }

  TextStyle hiUserTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 28,
  );

  TextStyle sublineTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
}
