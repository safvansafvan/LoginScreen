import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {super.key,
      required this.hint,
      required this.type,
      required this.prefixicon,
      this.suffixIcon,
      this.isObs = false});

  final String hint;
  final TextInputType type;
  final IconData prefixicon;
  final bool isObs;
  final IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      elevation: 3,
      child: Center(
        child: TextFormField(
          keyboardType: type,
          obscureText: isObs,
          decoration: InputDecoration(
              prefixIcon: Icon(prefixicon),
              suffixIcon: Icon(suffixIcon),
              hintText: hint,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none),
        ),
      ),
    );
  }
}
