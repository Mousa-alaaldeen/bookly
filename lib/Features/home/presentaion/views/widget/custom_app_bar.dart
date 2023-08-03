import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/components/components.dart';
import '../../../../search/presentaion/views/search_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 18, top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            width: 160,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              navigateTo(context, const SearchView());
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
