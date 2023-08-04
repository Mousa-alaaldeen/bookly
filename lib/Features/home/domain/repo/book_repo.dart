import 'package:bookly/Features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<BookEntity> featchFeatureBooks();
  Future<BookEntity> featchNewesBooks();
}
