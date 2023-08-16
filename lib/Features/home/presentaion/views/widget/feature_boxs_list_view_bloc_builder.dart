// ignore_for_file: avoid_print, dead_code

import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:cubit_form/cubit_form.dart';

import 'package:flutter/material.dart';

import '../../../../../core/utils/function/build_error_snack_bar.dart';
import '../../manger/featcherd_books_cubit/featcherd_books_cubit.dart';
import '../../manger/featcherd_books_cubit/featcherd_books_state.dart';
import 'Feature_boxs_list_view.dart';
import 'feature_boxs_list_view_loding_indicator.dart';

class FeatureBoxsListViewBlocBuilder extends StatelessWidget {
  const FeatureBoxsListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<BookEntity> books = [];
    return BlocConsumer<FeatureBooksCubit, FeatureBooksState>(
        listener: (context, state) {
      if (state is FeatureBooksSuccess) {
        books.addAll(state.books);
      }
      if (state is FeatureBooksPaginationFailure) {
        ScaffoldMessenger.of(context).showSnackBar(
          buildErrorWidget(state.error),
        );
      }
    }, builder: (context, state) {
      
      if (state is FeatureBooksSuccess ||
          state is FeatureBooksPaginationLoding ||
          state is FeatureBooksPaginationFailure) {
        return FeatureBoxsListView(
          books: books,
        );
      } else if (state is FeatureBooksError) {
        print(state.error.toString());
        return Text(state.error);
      } else {
        print('0000');

        return  const FeatureBoxsListViewLodingIndicator();
      }
    });
  }
}
