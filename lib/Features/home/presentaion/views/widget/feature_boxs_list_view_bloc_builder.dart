// ignore_for_file: avoid_print

import 'package:cubit_form/cubit_form.dart';

import 'package:flutter/material.dart';

import '../../manger/featcherd_books_cubit/featcherd_books_cubit.dart';
import '../../manger/featcherd_books_cubit/featcherd_books_state.dart';
import 'Feature_boxs_list_view.dart';

class FeatureBoxsListViewBlocBuilder extends StatelessWidget {
  const FeatureBoxsListViewBlocBuilder({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
        builder: (context, state) {
      if (state is FeatureBooksSuccess) {
        print(state.books);
        return const FeatureBoxsListView();
      } else if (state is FeatureBooksError) {
        print(state.error.toString());
        return Text(state.error);
      } else {

        print('0000');

        return const CircularProgressIndicator();
      }
    });
  }
}
