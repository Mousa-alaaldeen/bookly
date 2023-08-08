// ignore_for_file: deprecated_member_use

import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repo/book_repo.dart';
import 'package:bookly/core/errors/failere.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> featchFeatureBooks() async {
    try {
      var books = homeLocalDataSource.featchFeatureBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.featchFeatureBooks();
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> featchNewesBooks() async {
    try {
      var books = homeLocalDataSource.featchFeatureBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.featchFeatureBooks();
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
