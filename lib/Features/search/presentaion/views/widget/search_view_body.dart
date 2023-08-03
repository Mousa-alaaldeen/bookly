import 'package:flutter/material.dart';

import 'cusstom_sratch_text_filed .dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [CusstomSratchTextFiled()],
      ),
    );
  }
}
