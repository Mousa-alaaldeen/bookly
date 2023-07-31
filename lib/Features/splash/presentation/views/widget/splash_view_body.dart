import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

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
        const SizedBox(
          height: 4,
        ),
        const TypeWriterText(
          text: Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
          duration: Duration(milliseconds: 200),
        ),
      ],
    );
  }
}
