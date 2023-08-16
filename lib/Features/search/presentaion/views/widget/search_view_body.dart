// ignore_for_file: unnecessary_import

import 'package:bookly/Features/home/presentaion/views/widget/best_sellor-list_view_itm.dart';
import 'package:bookly/Features/search/presentaion/views/widget/cusstom_sratch_text_filed%20.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return  const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellorListViewItm(
            image: '',
            authorName: '',
            pre: '',
            title: '',
            
            book: [],
          ),
        );
      },
    );
  }
}
