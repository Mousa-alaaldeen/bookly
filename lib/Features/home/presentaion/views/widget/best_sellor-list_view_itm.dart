// ignore_for_file: file_names

import 'package:bookly/Features/home/presentaion/views/book_details_view.dart';
import 'package:bookly/core/utils/components/components.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../domain/entities/book_entity.dart';
import 'book_rating.dart';

class BestSellorListViewItm extends StatelessWidget {
  const BestSellorListViewItm(
      {super.key,
      required this.image,
      required this.title,
      required this.authorName,
      required this.pre, required this.book});
  final String image;
  final String title;
  final String authorName;
  final String pre;
final  List<BookEntity>book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () {
          navigateTo(
              context,
              BookDetailsView(
                image: image,
                authorName: authorName,
                title: title,
                pre: pre, book:book ,
              ));
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
                        title,
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
                    Text(
                      authorName,
                       maxLines: 1,
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          pre,
                          style: Styles.textStyle20,
                        ),
                        const Text(
                          '€',
                          style: Styles.textStyle20,
                        ),
                        const Spacer(),
                        const BookRating(),
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
