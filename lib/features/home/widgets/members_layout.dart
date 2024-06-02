import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/sizes.dart';
import 'list_tile.dart';

class AppMembersLayout extends StatefulWidget {
  final VoidCallback onTap;

  const AppMembersLayout({super.key, required this.onTap});

  @override
  State<AppMembersLayout> createState() => _AppMembersLayoutState();
}

class _AppMembersLayoutState extends State<AppMembersLayout> {
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(-1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  );
                },
                child: _isSearching
                    ? Container(
                        key: const ValueKey(1),
                        width: MediaQuery.of(context).size.width - 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.greyContainerBackground,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Member',
                            hintStyle: Theme.of(context).textTheme.labelLarge,
                            prefix: const SizedBox(
                              width: 30,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      )
                    : Container(
                        width: MediaQuery.of(context).size.width - 120,
                        height: 50,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Members',
                          key: const ValueKey(2),
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  );
                },
                child: _isSearching
                    ? GestureDetector(
                        key: const ValueKey(3),
                        child: Text(
                          'Cancel',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        onTap: () {
                          setState(() {
                            _isSearching = false;
                          });
                        },
                      )
                    : GestureDetector(
                        key: const ValueKey(4),
                        onTap: () {
                          setState(() {
                            _isSearching = true;
                          });
                          widget.onTap();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColors.greyContainerBackground,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            Icons.search,
                            size: AppSizes.iconMd,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwSection / 2,
        ),
        for (int i = 0; i < 10; i++) const AppListTile(),
      ],
    );
  }
}
