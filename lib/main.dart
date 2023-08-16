// ignore_for_file: prefer_const_constructors

import 'package:bookly/Features/home/domain/use_cases/faetch_newes_books.dart';
import 'package:bookly/Features/home/presentaion/manger/featcherd_books_cubit/featcherd_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'Features/home/data/repo/home_repo_impl.dart';
import 'Features/home/domain/entities/book_entity.dart';
import 'Features/home/domain/use_cases/featch_feature_books_case.dart';
import 'Features/home/presentaion/manger/newes_books_cubit/newes_books_cubit.dart';
import 'Features/splash/presentation/views/splash_view.dart';
import 'Features/splash/presentation/views/widget/cubit/cubit.dart';
import 'core/utils/Api_service.dart';
import 'core/utils/function/setup_service_locator.dart';
import 'core/utils/function/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  setupServiceLocator();
  ApiService;
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewesBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewesBooksCubit(
            FaerchNewseBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          )..faerchNewseBook(),
        ),
        BlocProvider(
          create: (context) => FeatureBooksCubit(
            FeatchFeatureBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          )..faerchFeatureBook(),
        ),
        BlocProvider(create: (context) => SplashCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        home: SplaShView(),
      ),
    );
  }
}
