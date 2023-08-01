import 'package:bookly/Features/home/presentaion/views/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widget/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        CustomListViewItm(),
      ],
    );
  }
}
