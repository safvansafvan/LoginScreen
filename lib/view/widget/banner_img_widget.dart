import 'package:flutter/material.dart';

class BannerImageWidget extends StatelessWidget {
  const BannerImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/banner.png'))),
    );
  }
}
