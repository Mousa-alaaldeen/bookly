import 'package:bookly/Features/home/presentaion/views/widget/book_rating.dart';
import 'package:bookly/Features/home/presentaion/views/widget/books_action.dart';
import 'package:bookly/Features/home/presentaion/views/widget/custom_book_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';


class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * .2),
          child:  const CustomBookImageLoadingIndicator(image: ''),
        ),
        const SizedBox(
          height: 42,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
