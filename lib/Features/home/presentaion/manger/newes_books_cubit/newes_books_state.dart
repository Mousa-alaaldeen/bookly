import 'package:bookly/Features/home/domain/entities/book_entity.dart';

abstract class NewesBooksState {}

class NewesBooksInitial extends NewesBooksState {}

class NewesBooksLoding extends NewesBooksState {}

class NewesBooksSuccess extends NewesBooksState {
  final List<BookEntity> books;

  NewesBooksSuccess(this.books);
}

class NewesBooksError extends NewesBooksState {
  final String error;
  NewesBooksError(this.error);
}
