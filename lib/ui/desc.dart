import 'package:flutter/material.dart';
import 'package:weather_app_project/ui/weather_desc.dart';

class Desc extends StatelessWidget {
  const Desc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WeatherDesc(
          icon: Icons.air,
          text: '8 Km/h',
        ),
        WeatherDesc(
          icon: Icons.wb_sunny_outlined,
          text: '47%',
        ),
      ],
    );
  }
}
