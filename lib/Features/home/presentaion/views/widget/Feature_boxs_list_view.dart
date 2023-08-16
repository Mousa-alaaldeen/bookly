// ignore_for_file: avoid_print

import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';

import '../../manger/featcherd_books_cubit/featcherd_books_cubit.dart';
import 'custom_book_image.dart';

class FeatureBoxsListView extends StatefulWidget {
  const FeatureBoxsListView({Key? key, required this.books}) : super(key: key);

  final List<BookEntity> books;

  @override
  State<StatefulWidget> createState() => _FeatureBoxsListViewState();
}

class _FeatureBoxsListViewState extends State<FeatureBoxsListView> {
  late final ScrollController
      _scrollController; /*       عشان يراقب شو بصير في ال List*/
  var nextPage = 1;
  var isLoding = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_checkScrollPercentage);
  }

  void _checkScrollPercentage() async {
    final double maxScrollExtent = _scrollController.position.maxScrollExtent;
    final double currentScrollExtent = _scrollController.position.pixels;
    final double threshold = maxScrollExtent * 0.7; // 70% of maxScrollExtent

    if (currentScrollExtent >= threshold) {
      if (!isLoding) {
        print('neee');
        print(nextPage);
        isLoding = true;
        await BlocProvider.of<FeatureBooksCubit>(context)
            .faerchFeatureBook(pageNumber: nextPage++);
        isLoding = false;
      }
    }
  }

  void fetchFeaturedBooks() {
    // Implement your logic to fetch featured books
    // This could involve making an API request or any other action.
    print('Fetching featured books...');
  }

  @override
  void dispose() {
    _scrollController.removeListener(_checkScrollPercentage);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CustomBookImageLoadingIndicator(
          image: widget.books[index].image,
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 8,
        ),
        itemCount: widget.books.length,
      ),
    );
  }
}
