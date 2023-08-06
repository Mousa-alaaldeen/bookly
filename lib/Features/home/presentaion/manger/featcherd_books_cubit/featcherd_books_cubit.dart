import 'package:bookly/Features/home/domain/use_cases/featch_feature_books_case.dart';
import 'package:cubit_form/cubit_form.dart';

import '../featcherd_books_state.dart';

class FeatcherdBooksCubit extends Cubit {
  FeatcherdBooksCubit(this.featchFeatureBooksUseCase)
      : super(FeatureBooksInitial());
  final FeatchFeatureBooksUseCase featchFeatureBooksUseCase;
  Future<void> featchFeatureBooks() async {
    emit(FeatureBooksLoding());
    var result = await featchFeatureBooksUseCase.call();
    result.fold((failure) {
      emit(FeatureBooksError(failure.massage));
    }, (books) {
      emit(FeatureBooksSuccess(books));
    });
  }
}
