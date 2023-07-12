import 'package:finalmain/modules/shop_app/BMI/view.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  var result;
  bool isMaleSelected;

  ResultScreen({super.key, required this.result, required this.isMaleSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFE1D1),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned(
                  top: 100,
                  left: 50,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.6),
                        borderRadius: BorderRadius.circular(500)),
                  ),
                ),
                Image(
                    image: isMaleSelected
                        ? AssetImage('assets/images/man.png')
                        : AssetImage('assets/images/woman.png'),
                    height: 300),
              ],
            ),
            Text('Your Result ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Text(
              '$result',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
