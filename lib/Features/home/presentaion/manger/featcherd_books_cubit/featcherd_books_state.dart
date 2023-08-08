
import '../../../domain/entities/book_entity.dart';

abstract class FeatureBooksState {}

class FeatureBooksInitial extends FeatureBooksState {}

class FeatureBooksLoding extends FeatureBooksState {}

class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookEntity> books;

  FeatureBooksSuccess(this.books);
}

class FeatureBooksError extends FeatureBooksState {
  final String error;
  FeatureBooksError(this.error);
}
