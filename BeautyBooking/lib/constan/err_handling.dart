import 'dart:convert';

import 'package:BeautyBooking/constan/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void httpErrorHandling({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body));

      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body));

      break;
    default:
      showSnackBar(context, response.body);
  }
}
