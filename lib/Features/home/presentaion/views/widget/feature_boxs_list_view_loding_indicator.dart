import 'package:bookly/core/utils/widget/custom_fading_widget.dart';
import 'package:flutter/material.dart';

import 'custom_book_image_loading_indicator.dart';

class FeatureBoxsListViewLodingIndicator extends StatelessWidget {
  const FeatureBoxsListViewLodingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomBookImageLoadingIndicator(),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            width: 8,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
