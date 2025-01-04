
 // ignore_for_file: prefer_const_constructors
 
import 'package:flutter/material.dart';

import 'constans.dart';

 void showSnackBar(BuildContext context, String text) {
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(milliseconds:6000),
      content: Text(text,style: TextStyle(color: Colors.white),),
      action: SnackBarAction(label: "close", onPressed: () {}),
      backgroundColor: kprimaryColor,
    )
    );
 }