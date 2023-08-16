import 'package:bookly/Features/home/presentaion/views/widget/book_rating.dart';
import 'package:bookly/Features/home/presentaion/views/widget/books_action.dart';
import 'package:bookly/Features/home/presentaion/views/widget/custom_book_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen(
      {super.key,
      required this.image,
      required this.authorName,
      required this.title,
      required this.pre});
  final String image;
  final String authorName;
  final String title;
  final String pre;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * .2),
          child: CustomBookImage(
            image: image.toString(),
          ),
        ),
        const SizedBox(
          height: 42,
        ),
        Text(
          title,
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
            authorName,
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
        BooksAction(pro: pre,),
      ],
    );
  }
}
