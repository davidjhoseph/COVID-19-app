import 'package:flutter/material.dart';
import '../helpers/constant.dart';

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;
  const Counter({Key key, this.color, this.title, this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color.withOpacity(0.26),
            shape: BoxShape.circle,
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color: color, width: 2),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          number.toString(),
          style: TextStyle(fontSize: 40, color: color),
        ),
        Text(
          title,
          style: kSubTextStyle,
        )
      ],
    );
  }
}
