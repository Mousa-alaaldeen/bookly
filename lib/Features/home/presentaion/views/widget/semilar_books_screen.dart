import 'package:bookly/Features/home/presentaion/views/widget/semilar_books_list_view.dart';

import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../domain/entities/book_entity.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key, required this.book});
final List<BookEntity>book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
       SimilarBooksListview(books: book,),
      ],
    );
  }
}
