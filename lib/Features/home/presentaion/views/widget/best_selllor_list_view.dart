// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:bookly/Features/home/presentaion/views/widget/best_sellor-list_view_itm.dart';
import '../../../domain/entities/book_entity.dart';
import '../../manger/newes_books_cubit/newes_books_cubit.dart';

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
     var isLoding = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_checkScrollPosition);
  }

  void _checkScrollPosition() async{
    final maxScrollExtent = _scrollController.position.maxScrollExtent;
    final currentScrollPosition = _scrollController.position.pixels;
    final threshold = maxScrollExtent * 0.7;

    if (currentScrollPosition >= threshold) {
      if (!isLoding) {
        print('neee');
        print(nextPage);
        isLoding = true;
        await BlocProvider.of<NewesBooksCubit>(context)
            .faerchNewseBook();
        isLoding = false;
      }
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
        authorName: widget.books[index].authorName,
        title: widget.books[index].title.toString(), book:widget.books ,
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: widget.books.length,
    );
  }
}
