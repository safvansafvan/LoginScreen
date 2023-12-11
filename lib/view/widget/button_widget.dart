import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.isSignIn});

  final bool isSignIn;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          maximumSize: const Size(250, 45),
          minimumSize: const Size(250, 45),
          backgroundColor: Colors.pink),
      onPressed: () {},
      child: Text(
        isSignIn ? 'Sign In' : 'Sign Up',
        style: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
      ),
    );
  }
}
