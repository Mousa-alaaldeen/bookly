// ignore_for_file: unused_local_variable

import 'package:bookly/Features/home/presentaion/views/widget/cusstem_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * .2),
            child: const CustomBookImage(),
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
        ],
      ),
    );
  }
}
