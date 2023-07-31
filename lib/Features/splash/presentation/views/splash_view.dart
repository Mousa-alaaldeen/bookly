// ignore_for_file: prefer_const_constructors

import 'package:bookly/Features/home/presentaion/views/widget/home.dart';
import 'package:bookly/Features/splash/presentation/views/widget/cubit/cubit.dart';
import 'package:bookly/Features/splash/presentation/views/widget/cubit/states.dart';
import 'package:bookly/Features/splash/presentation/views/widget/splash_view_body.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/components/components.dart';

class SplaShView extends StatelessWidget {
  const SplaShView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit, SplaShViewBodyStates>(
        listener: (context, state) {
     
     }, builder: (context, state) {
      Future.delayed(Duration(seconds: 4), () {
          // Add any code you want to execute after the delay here
          navigateTo(context,Home());
        });
      return Scaffold(
        body: SplaShViewBody(),
      );
    });
  }
}
