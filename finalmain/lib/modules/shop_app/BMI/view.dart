import 'dart:math';

import 'package:finalmain/modules/shop_app/BMI/result.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double heightValue = 150;
  bool isMaleSelected = true;
  int weight = 60;
  int age = 25;
  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFE1D1),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isMaleSelected = !isMaleSelected;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: isMaleSelected
                                    ? Colors.green.shade400
                                    : Colors.white),
                            child: Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/man.png'),
                                    height: 100,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Male',
                                    style: TextStyle(
                                        color: isMaleSelected
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        letterSpacing: 1.1),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              setState(() {
                                isMaleSelected = !isMaleSelected;
                              });
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: isMaleSelected
                                    ? Colors.white
                                    : Colors.green.shade400),
                            child: Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  const Image(
                                    image:
                                        AssetImage('assets/images/woman.png'),
                                    height: 100,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: isMaleSelected
                                            ? Colors.black
                                            : Colors.white,
                                        letterSpacing: 1.1),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ), //contains the two items male and female
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Height',
                          style: TextStyle(
                            fontSize: 30,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${heightValue.round()}',
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              ' CM',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.green.shade700),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Slider(
                          value: heightValue,
                          onChanged: (value) {
                            setState(() {
                              heightValue = value;
                            });
                          },
                          min: 10,
                          max: 210,
                          activeColor: Colors.green.shade400,
                        )
                      ],
                    ),
                  ),
                ),
              ), //contains the slider item
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Weight',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '$weight',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 25),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 10, end: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        mini: true,
                                        backgroundColor: Colors.green.shade700,
                                        child: const Icon(Icons.remove),
                                      ),
                                      const Spacer(),
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        mini: true,
                                        backgroundColor: Colors.green.shade700,
                                        child: const Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Age',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '$age',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 25),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 10, end: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        mini: true,
                                        backgroundColor: Colors.green.shade700,
                                        child: const Icon(Icons.remove),
                                      ),
                                      const Spacer(),
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        mini: true,
                                        backgroundColor: Colors.green.shade700,
                                        child: const Icon(Icons.add),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ), // contains the two items of weight and age
              Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.green.shade700),
                  child: TextButton(
                      onPressed: () {
                        result = weight / pow(heightValue / 100, 2);
                        print(result.round());
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultScreen(
                                        result: result.round(),
                                    isMaleSelected: isMaleSelected,
                                      )));
                        });
                      },
                      child: Text(
                        'Calculate'.toUpperCase(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                            fontSize: 20,
                            color: Colors.white),
                      ))) // contains the button that calculate the result
            ],
          ),
        ),
      ),
    );
  }
}
