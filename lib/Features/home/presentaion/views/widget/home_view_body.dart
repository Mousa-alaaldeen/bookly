import 'package:bookly/Features/home/presentaion/views/widget/Feature_boxs_list_view.dart';
import 'package:bookly/Features/home/presentaion/views/widget/best_selllor_list_view.dart';
import 'package:bookly/Features/home/presentaion/views/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureBoxsListView(),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 50,
                ),
                child: Text(
                  'Best Sellor',
                  style: Styles.titleMedium,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BookSellorListView(),
        ),
      ],
    );
  }
}
