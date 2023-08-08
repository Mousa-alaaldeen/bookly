// ignore_for_file: file_names

import 'package:bookly/Features/home/presentaion/views/book_details_view.dart';
import 'package:bookly/core/utils/components/components.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellorListView extends StatelessWidget {
  const BestSellorListView({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () {
          navigateTo(context, const BookDetailsView());
        },
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: CachedNetworkImage(
                    imageUrl: image,
                  )),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Harry Potter and the Goblet of Fire ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: kGTSectraFineRegular,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'J.K .Rowling',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Row(
                      children: [
                        Text(
                          '19.99\$ ',
                          style: Styles.textStyle20,
                        ),
                        Spacer(),
                        BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
