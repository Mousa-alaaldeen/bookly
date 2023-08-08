import 'package:cubit_form/cubit_form.dart';

import '../../../domain/use_cases/featch_feature_books_case.dart';
import 'featcherd_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.featchFeatureBooksUseCase)
      : super(FeatureBooksInitial());

  final FeatchFeatureBooksUseCase featchFeatureBooksUseCase;
  Future<void> faerchFeatureBook() async {
    emit(FeatureBooksLoding());
    var result = await featchFeatureBooksUseCase.call();
    result.fold((failure) => {emit(FeatureBooksError(failure.massage))},
        (books) => {emit(FeatureBooksSuccess(books))});
  }
}
