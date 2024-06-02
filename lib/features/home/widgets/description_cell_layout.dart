import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../utils/sizes.dart';
import '../../../utils/strings.dart';
import 'cell.dart';

class AppDescriptonAndCellLayout extends StatelessWidget{
  const AppDescriptonAndCellLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// -- Description

        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: ReadMoreText(
            AppStrings.testText,
            trimLines: 6,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400),
            colorClickableText: Colors.blue,
            trimMode: TrimMode.Line,
            trimCollapsedText:
            'Read more                                   ',
            trimExpandedText: ' Show less',
            moreStyle: Theme.of(context).textTheme.titleSmall,
            lessStyle: Theme.of(context).textTheme.titleSmall,
          ),
        ),

        /// -- Cells
        const SizedBox(
          height: AppSizes.spaceBtwSection / 2,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Row(
            children: [
              AppCell(
                title: 'outdoor',
              ),
              AppCell(
                title: 'outdoor',
              ),
              AppCell(
                title: 'outdoor',
              ),
              AppCell(
                title: 'outdoor',
              ),
              AppCell(
                title: '+1',
              ),
            ],
          ),
        ),

      ],
    );
  }

}