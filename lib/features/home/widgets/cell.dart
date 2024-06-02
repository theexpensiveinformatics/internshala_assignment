import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class AppCell extends StatelessWidget{
  const AppCell({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 7),
      padding: const EdgeInsets.only(left: 9,right: 9,top: 3,bottom: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: AppColors.redTextColor)
      ),
      child: Text(title,style: Theme.of(context).textTheme.labelMedium,),
    );
  }

}