import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';

class AppListTile extends StatefulWidget{
  const AppListTile({super.key});

  @override
  State<AppListTile> createState() => _AppListTileState();

}

class _AppListTileState extends State<AppListTile> {
  bool _button = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: const SizedBox(
        height: 52,
        width: 52,
        child: CircleAvatar(
          backgroundImage: AssetImage(AppImages.yashika),
        ),
      ),
      title: Text(
        'Yashika',
        style: Theme.of(context).textTheme.labelLarge,
      ),
      subtitle: Text(
        '29, India',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: GestureDetector(
        onTap: (){
          _button = !_button;
          setState(() {

          });
        },
        child: Container(
          width: 120,
          height: 43,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: _button == true ? AppColors.redTextColor : AppColors.greyButtonColor
          ),
          child: Text(_button==true ? 'Add':'Following',style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),),
        ),
      ),
    );
  }
}