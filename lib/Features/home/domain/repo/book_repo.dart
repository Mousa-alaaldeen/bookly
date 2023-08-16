import 'package:bookly/core/errors/failere.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> featchFeatureBooks(
      {int pageNumber = 0});
  Future<Either<Failure, List<BookEntity>>> featchNewesBooks();
}
