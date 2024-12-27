import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Registration.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Column(
                children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("asset/shape.png"),
            ],
          ),

                  const SizedBox(height: 20),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/s1.png"),
              const SizedBox(height: 30),
              Text(
                "Gets things with TODs",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur. "
                      "Eget sit nec et euismod. Consequat urna quam felis"
                      " interdum quisque. Malesuada adipiscing tristique ut eget sed.",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          )),
                  const SizedBox(height: 30),
          Container(
            height: 60,
            width: 380,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Registration()));
              },
              child: const Text(
                "Get Started",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff50C2C9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
                  const SizedBox(height: 30),
        ],
      ),
    );
  }
}
