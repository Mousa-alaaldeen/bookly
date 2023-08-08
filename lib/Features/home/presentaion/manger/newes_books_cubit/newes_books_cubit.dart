import 'package:cubit_form/cubit_form.dart';

import '../../../domain/use_cases/faetch_newes_books.dart';
import 'newes_books_state.dart';

class NewesBooksCubit extends Cubit<NewesBooksState> {
  NewesBooksCubit(this.faerchNewseBooksUseCase)
      : super(NewesBooksInitial());

  final FaerchNewseBooksUseCase faerchNewseBooksUseCase;
  Future<void> faerchNewseBook() async {
    emit(NewesBooksLoding());
    var result = await faerchNewseBooksUseCase.call();
    result.fold((failure) => {emit(NewesBooksError(failure.massage),),},
        (books) => {emit(NewesBooksSuccess(books))});
  }
}
