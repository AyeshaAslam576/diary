import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:splashscreen/Registration.dart';
import 'package:splashscreen/dashboard_view.dart';
import 'splash_screen.dart';
class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Form(
        key: _formKey,
        child: Container(
          color: Colors.blueGrey[50],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("asset/shape.png"),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SplashScreen()),
                      );
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ],
              ),
             Expanded(child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text(
                   "Welcome Back ",
                   style: TextStyle(
                     fontWeight: FontWeight.w700,
                     fontFamily: "Poppins",
                     fontSize: 18,
                   ),
                 ),
                 Image.asset("asset/s2.png"),
                 Padding(
                   padding: const EdgeInsets.only(left: 10.0,right: 10),
                   child: TextFormField(
                     controller: _email,
                     validator: (value) {
                       final validator = Validator(validators: [
                         RequiredValidator(),
                         EmailValidator(),
                       ]);
                       return validator.validate(label: "Email", value: value);
                     },
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(color: Colors.white),
                       ),
                       focusedBorder:  OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.white),
                       ),
                       fillColor: Colors.white,
                       filled: true,
                       hintText: "Enter Your Email",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 10.0,right: 10),
                   child: TextFormField(
                     controller: _password,
                     obscureText: true,
                     validator: (value) {
                       final validator = Validator(validators: [
                         RequiredValidator(),
                         MaxLengthValidator(length: 8),
                         MinLengthValidator(length: 6),
                       ]);
                       return validator.validate(label: "Password", value: value);
                     },
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(color: Colors.white),
                       ),
                       focusedBorder:  OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.white),
                       ),
                       fillColor: Colors.white,
                       filled: true,
                       hintText: "Enter Password",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10.0),
                   child: TextButton(
                     onPressed: () {
                       Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) => Registration()),
                       );
                     },
                     child: Text(
                       "Forgot Password ?",
                       style: TextStyle(
                         fontSize: 13,
                         fontFamily: "Poppins",
                         fontWeight: FontWeight.w400,
                         color: Color(0xff50C2C9),
                       ),
                     ),
                   ),
                 ),
               ],
             )),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Container(
                  height: 60,
                  width: 380,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => DashboardView()),
                        );
                        _email.clear();
                        _password.clear();
                      }
                    },
                    child: const Text(
                      "Login",
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      "Don't have an account ? ",
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Registration()),
                        );
                      },
                      child: Text("Sign up"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
