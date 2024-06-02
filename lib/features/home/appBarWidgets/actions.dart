import 'package:assignment_internshala/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBarActions extends StatelessWidget {
  final double opacityBackBackground;

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
          showModalBottomSheet(
            enableDrag: true,
            showDragHandle: true,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 200,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Iconsax.link,size: AppSizes.iconMd,),
                      title: Text('Invite',style: Theme.of(context).textTheme.titleLarge,),
                      onTap: () {
                        // Handle the invite action here
                      },
                    ),
                    ListTile(
                      leading: const Icon(Iconsax.user_add,size: AppSizes.iconMd,),
                      title: Text('Add Member',style: Theme.of(context).textTheme.titleLarge,),
                      onTap: () {
                        // Handle the add member action here
                      },
                    ),
                    ListTile(
                      leading: const Icon(Iconsax.people,size: AppSizes.iconMd,),
                      title: Text('Add Group',style: Theme.of(context).textTheme.titleLarge,),
                      onTap: () {
                        // Handle the add group action here
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
