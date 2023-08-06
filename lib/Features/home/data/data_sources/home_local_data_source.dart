import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> featchFeatureBooks();
  List<BookEntity> featchNewesBooks();
}

class HomeRemoteDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> featchFeatureBooks() {
    // TODO: implement featchFeatureBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> featchNewesBooks() {
    // TODO: implement featchNewesBooks
    throw UnimplementedError();
  }
}
