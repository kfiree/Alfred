import 'package:flutter/material.dart';

import 'title.dart';


List<Widget> header(BuildContext context, String title) {
  return [
    Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
              width: 40.0,
              height: 40.0,
              fit: BoxFit.cover,
              image: AssetImage('assets/list.png')),
        ],
      ),
    ),
    TaskTitle(title: title),
  ];
}