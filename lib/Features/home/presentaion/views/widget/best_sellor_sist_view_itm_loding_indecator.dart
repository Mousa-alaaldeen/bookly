// ignore_for_file: file_names

import 'package:bookly/core/utils/widget/custom_fading_widget.dart';
import 'package:flutter/material.dart';


class BestSellorListViewItmLodingIndicator extends StatelessWidget {
  const BestSellorListViewItmLodingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: Container(
                    color: Colors.grey[50],
                  )),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Container(
                        height: 10,
                        color: Colors.grey[50],
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 10,
                      color: Colors.grey[50],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          color: Colors.grey[50],
                        ),
                        Container(
                          height: 10,
                          color: Colors.grey[50],
                        ),
                        const Spacer(),
                       Container(
                         width: 60,
                         height: 10,
                          color: Colors.grey[50],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
