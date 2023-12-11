import 'package:flutter/material.dart';

class ContinueWithOption extends StatelessWidget {
  const ContinueWithOption({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25,
        backgroundImage: AssetImage(path),
      ),
    );
  }
}
