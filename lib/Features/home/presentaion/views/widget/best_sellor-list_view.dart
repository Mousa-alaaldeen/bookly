
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSellorListView extends StatelessWidget {
  const BestSellorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amber,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetData.testImage,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}