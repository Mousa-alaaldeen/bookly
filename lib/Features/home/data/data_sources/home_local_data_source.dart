import 'package:bookly/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> featchFeatureBooks();
  List<BookEntity> featchNewesBooks();
}

class HomeRemoteDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> featchFeatureBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> featchNewesBooks() {
    var box = Hive.box<BookEntity>(kNewesBox);
    return box.values.toList();
  }
}
