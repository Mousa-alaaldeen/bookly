import 'package:bookly/Features/home/presentaion/views/widget/custom_app_bar.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'Feature_boxs_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomAppBar(),
        FeatureBoxsListView(),
        Padding(
          padding: EdgeInsets.only(left: 18,top: 50,bottom: 25),
          child: Text(
            'Best Sellor',
            style: Styles.titleMedium,
          ),
        ),
      ],
    );
  }
}
