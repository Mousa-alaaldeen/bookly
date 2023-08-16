// ignore_for_file: avoid_renaming_method_parameters

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failere.dart';
import '../../../../core/use_cases/use_cases.dart';
import '../entities/book_entity.dart';
import '../repo/book_repo.dart';

class FeatchFeatureBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;
  FeatchFeatureBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int pageNumber = 0]) {
    return homeRepo.featchFeatureBooks(pageNumber: pageNumber);
  }
}
