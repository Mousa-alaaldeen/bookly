import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> featchFeatureBooks();
  Future<List<BookEntity>> featchNewesBooks();
}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  @override
  Future<List<BookEntity>> featchFeatureBooks() {
    // TODO: implement featchFeatureBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> featchNewesBooks() {
    // TODO: implement featchNewesBooks
    throw UnimplementedError();
  }
}