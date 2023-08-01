import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            width: 160,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
