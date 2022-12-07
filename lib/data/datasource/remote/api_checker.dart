import 'dart:developer';

import 'package:flutter/material.dart';

import '../../response/api_response.dart';

class ApiChecker {
  static void checkApi(BuildContext context, ApiResponse apiResponse) {
    if (apiResponse.error is! String &&
        apiResponse.error.errors[0].message == 'Unauthorized.') {
      //Provider.of<HomeProvider>(context,listen: false).clearHomeAddress();
      //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => AuthScreen()), (route) => false);
    } else {
      String errorMessage;
      if (apiResponse.error is String) {
        errorMessage = apiResponse.error.toString();
      } else {
        errorMessage = apiResponse.error.errors[0].message;
      }
      log(errorMessage.toString());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text(errorMessage, style: const TextStyle(color: Colors.white)),
          backgroundColor: Colors.red));
    }
  }
}
