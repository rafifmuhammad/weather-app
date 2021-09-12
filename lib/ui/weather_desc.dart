import 'package:flutter/material.dart';

class WeatherDesc extends StatelessWidget {
  const WeatherDesc({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.air),
        SizedBox(
          width: 5,
        ),
        Text('8 Km/h'),
      ],
    );
  }
}