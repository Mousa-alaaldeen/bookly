// ignore_for_file: unused_local_variable

import 'package:bookly/Features/home/presentaion/views/widget/book_details_screen.dart';
import 'package:bookly/Features/home/presentaion/views/widget/custem_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widget/semilar_books_screen.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody(
      {super.key,
      required this.image,
      required this.authorName,
      required this.pre,
      required this.title,
      required this.book});
  final String image;
  final String authorName;
  final String pre;
  final String title;
  final List<BookEntity> book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomDetailsAppBar(),
                BookDetailsScreen(
                  image: image,
                  authorName: authorName,
                  pre: pre,
                  title: title,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(
                  book: book,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
