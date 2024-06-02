import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBarLeading extends StatelessWidget{
  final double opacityBackBackground;

  const AppBarLeading({super.key, required this.opacityBackBackground});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, bottom: 12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black87.withOpacity(opacityBackBackground),
      ),
      child: IconButton(
        icon: const Icon(
          Iconsax.arrow_left,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }

}