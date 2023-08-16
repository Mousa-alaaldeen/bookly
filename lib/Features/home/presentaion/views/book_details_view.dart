import 'package:bookly/Features/home/presentaion/views/widget/book_details_view_body.dart';

import 'package:flutter/material.dart';

import '../../domain/entities/book_entity.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView(
      {super.key,
      required this.image,
      required this.authorName,
      required this.pre,
      required this.title, required this.book});
  final String image;
  final String authorName;
  final String pre;
  final String title;
  final List<BookEntity>book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          image: image,
          authorName: authorName,
          title: title,
          pre: pre, book: book,
        ),
      ),
    );
  }
}
