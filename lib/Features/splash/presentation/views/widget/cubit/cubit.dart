import 'package:bookly/Features/splash/presentation/views/widget/cubit/states.dart';
import 'package:cubit_form/cubit_form.dart';

class SplashCubit extends Cubit<SplaShViewBodyStates> {
  SplashCubit() : super(InitialState());

  static SplashCubit get(context) => BlocProvider.of(context);
  bool isDarke = false;
}
