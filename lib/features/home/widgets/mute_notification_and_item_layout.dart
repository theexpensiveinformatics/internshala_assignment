import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/colors.dart';
import '../../../utils/sizes.dart';
import 'item.dart';

class AppMuteNoticationAndItem extends StatefulWidget{
  const AppMuteNoticationAndItem({super.key});

  @override
  State<AppMuteNoticationAndItem> createState() => _AppMuteNoticationAndItemState();
}

class _AppMuteNoticationAndItemState extends State<AppMuteNoticationAndItem> {
  bool _switchValue=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mute Notifications',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              CupertinoSwitch(
                value: _switchValue,
                activeColor: AppColors.redTextColor,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
            ],
          ),

          /// -- options
          const SizedBox(
            height: AppSizes.spaceBtwSection / 1.5,
          ),
          const AppItems(
            title: 'Clear chat',
            icon: Iconsax.trash,
          ),
          const AppItems(
            title: 'Encryption',
            icon: Iconsax.lock,
          ),
          const AppItems(
            title: 'Exit community',
            icon: Iconsax.logout,
            color: AppColors.redTextColor,
          ),
          const AppItems(
            title: 'Report',
            icon: Iconsax.dislike,
            color: AppColors.redTextColor,
          ),
        ],
      ),
    );
  }
}