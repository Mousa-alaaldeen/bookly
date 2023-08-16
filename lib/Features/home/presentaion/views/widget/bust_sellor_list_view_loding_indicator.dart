import 'package:flutter/material.dart';

import 'best_sellor_sist_view_itm_loding_indecator.dart';

class BustSellorListViewLogingIndicator extends StatelessWidget {
  const BustSellorListViewLogingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
    
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const BestSellorListViewItmLodingIndicator(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: 10,
    );
  }
}