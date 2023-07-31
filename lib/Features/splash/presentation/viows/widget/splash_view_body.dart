import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SplaShViewBody extends StatelessWidget {
  const SplaShViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.logo),
      ],
    );
  }
}
