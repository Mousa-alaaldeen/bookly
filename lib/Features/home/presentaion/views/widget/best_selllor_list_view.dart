import 'package:flutter/material.dart';
import 'package:bookly/Features/home/presentaion/views/widget/best_sellor-list_view_itm.dart';
import '../../../domain/entities/book_entity.dart';

class BookSellorListView extends StatefulWidget {
  final List<BookEntity> books;

  const BookSellorListView({
    Key? key,
    required this.books,
  }) : super(key: key);

  @override
  _BookSellorListViewState createState() => _BookSellorListViewState();
}

class _BookSellorListViewState extends State<BookSellorListView> {
  final ScrollController _scrollController = ScrollController();
  bool requestTriggered = false;
   var nextPage = 1;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_checkScrollPosition);
  }

  void _checkScrollPosition() {
    final maxScrollExtent = _scrollController.position.maxScrollExtent;
    final currentScrollPosition = _scrollController.position.pixels;
    final threshold = maxScrollExtent * 0.7;

    if (currentScrollPosition >= threshold) {
      // Trigger your request here
      print('000000000');
     print(nextPage++);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_checkScrollPosition);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => BestSellorListViewItm(
        image: widget.books[index].image,
        pre: widget.books[index].price.toString(),
        rowling: widget.books[index].raning.toString(),
        title: widget.books[index].title.toString(),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: widget.books.length,
    );
  }
}
