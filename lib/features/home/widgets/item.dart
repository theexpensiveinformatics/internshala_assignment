import 'package:flutter/material.dart';
import '../../../utils/sizes.dart';

class AppItems extends StatelessWidget {
  const AppItems({super.key, required this.title, required this.icon,  this.color=Colors.black});

  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,size: AppSizes.iconMd-1,color: color,),
          const SizedBox(width: 15,),
          Text(title,style: Theme.of(context).textTheme.labelLarge!.copyWith(color: color),),
        ],
      ),
    );
  }
}
