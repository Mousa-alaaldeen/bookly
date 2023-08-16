import 'package:bookly/Features/home/presentaion/views/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widget/feature_boxs_list_view_bloc_builder.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_sellor_list_view_bloc_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBoxsListViewBlocBuilder(),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 50,
            ),
            child: Text(
              'New Books',
              style: Styles.textStyle18,
            ),
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child:  BookSellorListViewBlocBuilder(),
          )
        ],
      ),
    


        

    );
  }
}
