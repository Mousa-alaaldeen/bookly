import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class SemilarBooksListView extends StatelessWidget {
  const SemilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 5,
        ),
        itemCount: 10,
      ),
    );
  }
}
