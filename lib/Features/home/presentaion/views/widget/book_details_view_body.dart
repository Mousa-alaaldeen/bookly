// ignore_for_file: unused_local_variable

import 'package:bookly/Features/home/presentaion/views/widget/book_details_screen.dart';
import 'package:bookly/Features/home/presentaion/views/widget/custem_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widget/semilar_books_screen.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomDetailsAppBar(),
                BookDetailsScreen(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SemilarBooksScreen(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
