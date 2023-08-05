import 'package:bookly/Features/home/presentaion/views/widget/semilar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SemilarBooksScreen extends StatelessWidget {
  const SemilarBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        const SemilarBooksListView(),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
