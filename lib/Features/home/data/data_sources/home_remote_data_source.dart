// ignore_for_file: unused_local_variable

import '../../../../constants.dart';
import '../../../../core/utils/Api_service.dart';
import '../../../../core/utils/function/save_boox.dart';
import '../../domain/entities/book_entity.dart';
import '../models/book_model/book_model/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> featchFeatureBooks({int pageNumber = 0});
  Future<List<BookEntity>> featchNewesBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;
  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> featchFeatureBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=computer science&startIndex=${pageNumber * 10}');

    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kFeaturedBox);
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
    var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
    List<BookEntity> books = getNewesBooksList(data);
    saveBooksData(books, kNewesBox);

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
