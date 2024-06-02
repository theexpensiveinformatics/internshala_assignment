import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';

class AppBarFlexibleSpaceBar extends StatelessWidget{
  final double opacity;
  final double leadingSpace;
  final double size;
  final double opacityBackBackground;

  const AppBarFlexibleSpaceBar({super.key, required this.opacity, required this.leadingSpace, required this.size, required this.opacityBackBackground});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      expandedTitleScale: 1.3,
      titlePadding: EdgeInsets.zero,
      title: Container(
        alignment: Alignment.center,
        height: 65,
        color: AppColors.appBarBackgroundColor.withOpacity(opacity),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// -- Leading Space
              Row(
                children: [
                  SizedBox(
                    width: leadingSpace,
                  ),

                  ///-- Profile Pic
                  Container(
                    margin: EdgeInsets.only(right: size / 4),
                    width: size,
                    height: size,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(AppImages.party),
                    ),
                  ),

                  ///-- Title
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Weekend',
                        style:
                        Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Community • +11K Members',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: AppColors.white),
                      ),
                    ],
                  ),
                ],
              ),

              /// -- Share button
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Colors.white
                              .withOpacity(opacityBackBackground),
                          width: 1)),
                  child: Icon(
                    Icons.share_outlined,
                    color: Colors.white
                        .withOpacity(opacityBackBackground),
                    size: 16,
                  ),
                ),
              )
            ]),
      ),
      background: Image.asset(
        AppImages.party,
        fit: BoxFit.cover,
      ),
    );
  }
  
}