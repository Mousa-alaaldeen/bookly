// ignore_for_file: file_names

import 'package:bookly/Features/home/presentaion/views/widget/custom_book_image.dart';
import 'package:flutter/cupertino.dart';

class FeatureBoxsListView extends StatelessWidget {
  const FeatureBoxsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 8,
        ),
        itemCount: 10,
      ),
    );
  }
}
