import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final String title;

  const TaskTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _line(),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                const Text(
                  'Task',
                  style: TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  title,
                  style:
                  const TextStyle(fontSize: 28.0, color: Colors.grey),
                )
              ],
            ),
          ),
          _line(),
        ],
      ),
    );
  }

  Expanded _line(){
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey,
        height: 1.5,
      ),
    );
  }
}

