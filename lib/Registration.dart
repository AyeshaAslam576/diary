import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:splashscreen/Login.dart';
import 'package:splashscreen/dashboard_view.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey[50],
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("asset/shape.png"),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: const Text(
                        "Welcome to Onboard!",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                            fontSize: 18),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0, bottom: 15),
                      child: Text(
                        "Let’s help to meet up your tasks.",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          final validator = Validator(validators: [
                            RequiredValidator(),
                            const MaxLengthValidator(length: 50),
                            const MinLengthValidator(length: 3),
                          ]);
                          return validator.validate(
                            label: 'Name',
                            value: value,
                          );
                        },
                        controller: _name,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Enter Your Full Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _email,
                        validator: (value) {
                          final validator = Validator(validators: [
                            RequiredValidator(),
                            EmailValidator(),
                          ]);
                          return validator.validate(
                            label: 'Email',
                            value: value,
                          );
                        },
                        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
            ),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Enter Your Email",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          final validator = Validator(validators: [
                            RequiredValidator(),
                            const MaxLengthValidator(length: 20),
                            const MinLengthValidator(length: 6),
                          ]);
                          return validator.validate(
                            label: 'Password',
                            value: value,
                          );
                        },
                        controller: _password,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Enter Password",
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        validator: (value) {
                          final validator = Validator(validators: [
                            RequiredValidator(),
                            const MaxLengthValidator(length: 20),
                            const MinLengthValidator(length: 6),
                          ]);
                          return validator.validate(
                            label: 'Confirm Password',
                            value: value,
                          );
                        },
                        controller: _confirmPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 380,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      String pass = _password.text;
                      String confPass = _confirmPassword.text;

                      if (confPass != pass) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Passwords do not match"),
                          ),
                        );
                        return;
                      }
                      _name.clear();
                      _email.clear();
                      _password.clear();
                      _confirmPassword.clear();
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DashboardView()),
                      );
                    }
                  },
                  child: const Text(
                    "Register",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text(
                      "Already Have an account?",
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
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      child: const Text("Sign in"),
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
