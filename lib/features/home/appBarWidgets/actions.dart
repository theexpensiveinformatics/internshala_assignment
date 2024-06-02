import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget{

  final double opacityBackBackground ;

  const AppBarActions({super.key, required this.opacityBackBackground});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, bottom: 12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black87.withOpacity(opacityBackBackground),
      ),
      child: IconButton(
        icon: const Icon(
          Icons.more_vert_rounded,
          color: Colors.white,
        ),
        onPressed: () {
          /// -- bottom sheet

        },
      ),
    );
  }


}