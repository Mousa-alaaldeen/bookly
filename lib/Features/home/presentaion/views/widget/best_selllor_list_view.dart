import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/presentaion/views/widget/best_sellor-list_view.dart';
import 'package:flutter/cupertino.dart';

class BookSellorListView extends StatelessWidget {
  const BookSellorListView({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => BestSellorListView(
              image: books[index].image,
            ),
        separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
        itemCount: 10);
  }
}
