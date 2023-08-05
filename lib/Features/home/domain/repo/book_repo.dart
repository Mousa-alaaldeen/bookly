import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/errors/failere.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> featchFeatureBooks();
  Future<Either<Failure, List<BookEntity>>> featchNewesBooks();
}