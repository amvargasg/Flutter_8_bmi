import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({@required this.icon, @required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
