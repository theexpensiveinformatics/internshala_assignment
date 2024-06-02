import 'package:flutter/material.dart';

import '../../../utils/images.dart';
import '../../../utils/sizes.dart';

class AppMediaDocLayout extends StatelessWidget{
  const AppMediaDocLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Media, docs and links',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 19,
              )
            ],
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwSection / 2,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  AppImages.party,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  AppImages.party,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  AppImages.party,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  AppImages.party,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  AppImages.party,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  AppImages.party,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}