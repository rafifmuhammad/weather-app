import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(24),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          splashColor: Colors.blue,
          onTap: () {},
          child: Center(
            child: Text(
              'Cek Cuaca',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
