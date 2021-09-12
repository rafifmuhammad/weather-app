import 'package:flutter/material.dart';
import 'package:weather_app_project/ui/check_button.dart';
import 'package:weather_app_project/ui/desc.dart';
import 'package:weather_app_project/ui/input_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Pekanbaru',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.calendar_today_outlined,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://png.pngtree.com/png-vector/20191025/ourlarge/pngtree-sun-behind-clouds-icon-cartoon-style-png-image_1857985.jpg',
                    width: 300,
                    height: 200,
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Berawan',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '28*',
                        style: TextStyle(
                            fontSize: 64, fontWeight: FontWeight.bold),
                      ),
                      Desc()
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InputWidget(),
                CheckButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
