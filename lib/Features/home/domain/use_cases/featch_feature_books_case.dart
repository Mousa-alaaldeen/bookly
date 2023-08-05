import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';
import '../repo/book_repo.dart';

class FeatchFeatureBooksUseCase {
  final HomeRepo homeRepo;
  FeatchFeatureBooksUseCase(this.homeRepo);
  Future<Either<Fail, List<BookEntity>>> featchFeatureBooks() {
    //check permssion
    return homeRepo.featchFeatureBooks();
  }
}
