import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Fail, List<BookEntity>>> featchFeatureBooks();
  Future<Either<Fail, List<BookEntity>>> featchNewesBooks();
}
