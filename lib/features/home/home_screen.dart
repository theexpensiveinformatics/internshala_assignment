import 'package:assignment_internshala/features/home/appBarWidgets/actions.dart';
import 'package:assignment_internshala/features/home/appBarWidgets/flexible_space_Bar.dart';
import 'package:assignment_internshala/features/home/appBarWidgets/leading.dart';
import 'package:assignment_internshala/features/home/widgets/description_cell_layout.dart';
import 'package:assignment_internshala/features/home/widgets/media_doc_layout.dart';
import 'package:assignment_internshala/features/home/widgets/members_layout.dart';
import 'package:assignment_internshala/features/home/widgets/mute_notification_and_item_layout.dart';
import 'package:assignment_internshala/utils/colors.dart';
import 'package:assignment_internshala/utils/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  double _size = 0.0;
  double _opacity = 1.0;
  double _opacityBackBackground = 0.7;
  double _leadingSpace = 24;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    double offset = _scrollController.offset;
    double maxOffset = 270.0;
    setState(() {
      _size = (offset / maxOffset * 180).clamp(0.0, 50.0);
      _opacity = (1 - (offset / maxOffset)).clamp(0.0, 1.0);
      _opacityBackBackground = (1 - (offset / 150)).clamp(0.0, 0.7);
      _leadingSpace = (offset / maxOffset * 180).clamp(24.0, 60.0);
    });
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      900,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[

          SliverAppBar(
            backgroundColor: AppColors.appBarBackgroundColor,
            pinned: true,
            floating: false,
            expandedHeight: 270,
            actions: [
              AppBarActions(opacityBackBackground: _opacityBackBackground)
            ],
            leading: AppBarLeading(opacityBackBackground: _opacityBackBackground,),
            flexibleSpace: AppBarFlexibleSpaceBar(opacityBackBackground: _opacityBackBackground,leadingSpace: _leadingSpace,opacity: _opacity,size: _size,),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              /// -- Description & Cells
              const SizedBox(
                height: AppSizes.spaceBtwSection,
              ),
              const AppDescriptonAndCellLayout(),

              /// -- Media Docs and links
              const SizedBox(
                height: AppSizes.spaceBtwSection,
              ),
              const AppMediaDocLayout(),

              /// -- Mute Notifications
              const SizedBox(
                height: AppSizes.spaceBtwSection,
              ),
              const AppMuteNoticationAndItem(),

              /// -- members
              const SizedBox(
                height: AppSizes.spaceBtwSection,
              ),
              AppMembersLayout(onTap: _scrollToTop),
              const SizedBox(
                height: 100,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
