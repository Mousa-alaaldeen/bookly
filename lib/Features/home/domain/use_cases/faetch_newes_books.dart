import 'package:bookly/Features/home/domain/repo/book_repo.dart';
import 'package:bookly/core/use_cases/use_cases.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failere.dart';
import '../entities/book_entity.dart';

class FaerchNewseBooks extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FaerchNewseBooks(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) {
    return homeRepo.featchNewesBooks();
  }
}
