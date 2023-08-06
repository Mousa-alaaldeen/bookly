// ignore_for_file: unused_local_variable

import '../../../../core/utils/Api_service.dart';
import '../../domain/entities/book_entity.dart';
import '../models/book_model/book_model/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> featchFeatureBooks();
  Future<List<BookEntity>> featchNewesBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> featchFeatureBooks() async {
    dynamic data = await DioHelper.getData(
        url: 'volumes?Filtering=free-ebooks&q=computer science');

    List<BookEntity> books = getBooksList(data);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data["items"]) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> featchNewesBooks() async {
    // TODO: implement featchNewesBooks
    dynamic data = DioHelper.getData(
        url:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
    List<BookEntity> books = getNewesBooksList(data);

    return books;
  }

  List<BookEntity> getNewesBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];

    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(data));
    }
    return books;
  }
}
