
import 'package:bookly/Features/home/presentaion/views/widget/best_sellor-list_view.dart';
import 'package:flutter/cupertino.dart';

class BookSellorListView extends StatelessWidget {
  const BookSellorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const BestSellorListView(),
        separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
        itemCount: 10);
  }
}
