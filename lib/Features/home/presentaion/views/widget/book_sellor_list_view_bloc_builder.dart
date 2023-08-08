// ignore_for_file: avoid_print

import 'package:bookly/Features/home/presentaion/manger/newes_books_cubit/newes_books_cubit.dart';
import 'package:bookly/Features/home/presentaion/manger/newes_books_cubit/newes_books_state.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';

import 'best_selllor_list_view.dart';

class BookSellorListViewBlocBuilder extends StatelessWidget {
  const BookSellorListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewesBooksCubit, NewesBooksState>(
      builder: (BuildContext context, state) {
        if (state is NewesBooksSuccess) {
          print(state.books);
          return BookSellorListView(
            books: state.books,
          );
        } else if (state is NewesBooksError) {
          print(state.error.toString());
          return Text(state.error);
        } else {
          print('0000');

          return const CircularProgressIndicator();
        }
      },
    );
  }
}
