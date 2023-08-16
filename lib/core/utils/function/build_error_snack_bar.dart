 import 'package:flutter/material.dart';


SnackBar buildErrorWidget(String error) {
    return SnackBar(
          content: Text(error),
          backgroundColor: Colors.red,
        );
  }