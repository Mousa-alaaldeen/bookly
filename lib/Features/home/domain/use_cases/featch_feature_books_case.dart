import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failere.dart';
import '../../../../core/use_cases/use_cases.dart';
import '../repo/book_repo.dart';

class FeatchFeatureBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  FeatchFeatureBooksUseCase(this.homeRepo);
  
  @override
  Future<Either< Failure, List<BookEntity>>> call([NoParam? param]) {
    return homeRepo.featchFeatureBooks();
  }
}


