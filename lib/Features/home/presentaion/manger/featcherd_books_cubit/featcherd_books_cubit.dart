import 'package:cubit_form/cubit_form.dart';

import '../../../domain/use_cases/featch_feature_books_case.dart';
import 'featcherd_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.featchFeatureBooksUseCase)
      : super(FeatureBooksInitial());

  final FeatchFeatureBooksUseCase featchFeatureBooksUseCase;
  Future<void> faerchFeatureBook({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeatureBooksLoding());
    } else {
      emit(FeatureBooksPaginationLoding());
    }
    var result = await featchFeatureBooksUseCase.call(pageNumber);
    result.fold(
      (failure) {
        if (pageNumber == 0) {
          emit(FeatureBooksError(failure.massage));
        } else {
          emit(FeatureBooksPaginationFailure(failure.massage));
        }
      },
      (books) {
        emit(FeatureBooksSuccess(books));
      },
    );
  }
}
