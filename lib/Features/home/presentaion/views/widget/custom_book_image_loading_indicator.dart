import 'package:flutter/material.dart';

class CustomBookImageLoadingIndicator extends StatelessWidget {
  const CustomBookImageLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          child:Container(color: Colors.grey[50],)
        ));
  }
}