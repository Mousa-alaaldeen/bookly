import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentaion/views/widget/best_sellor-list_view.dart';
import 'cusstom_sratch_text_filed .dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CusstomSratchTextFiled(),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: SearchResultItm()),
      ],
    );
  }
}

class SearchResultItm extends StatelessWidget {
  const SearchResultItm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => const BestSellorListView(
              image: '',
            ),
        separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
        itemCount: 10);
  }
}
