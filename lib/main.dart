import 'package:flutter/material.dart';
import 'package:splashscreen/Login.dart';
import 'package:splashscreen/Registration.dart';
import 'package:splashscreen/dashboard_view.dart';
import 'package:splashscreen/splash_screen.dart';

// void main() {
//   runApp(const Registration());
// }

// class DashBoard extends StatelessWidget {
//   const DashBoard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           color: Colors.blue[50],
//           padding: const EdgeInsets.all(20),
//           child: Column(
//
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Image.asset("asset/shape.png"),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Image.asset("asset/s1.png"),
//               const SizedBox(height: 30),
//               Text(
//                 "Gets things with TODs",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w700,
//                   fontFamily: "Poppins",
//                   fontSize: 18,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Padding(
//                 padding: const EdgeInsets.only(left: 50, right: 50),
//                 child: Text(
//                   "Lorem ipsum dolor sit amet consectetur. "
//                       "Eget sit nec et euismod. Consequat urna quam felis"
//                       " interdum quisque. Malesuada adipiscing tristique ut eget sed.",
//                   style: TextStyle(
//                     fontSize: 13,
//                     fontFamily: "Poppins",
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//
//               const SizedBox(height: 30),
//               // GestureDetector(
//               //   onTap: () {
//               //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Registration()));
//               //   },
//               //   child: Text('Hey Clicl'),
//               // ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Registration()));
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) =>  Registration()));
//                 },
//                 child: const Text(
//                   "Get Started",
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue[400],
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// void main() {
//   runApp(const Registration());
// }
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SplashScreen",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
