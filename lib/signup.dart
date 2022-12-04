import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart';
import 'package:omars_app/doctor_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final _formField = GlobalKey<FormState>();
  // final bool emailValid = RegExp(
  //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //     .hasMatch(value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                key: _formField,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/crni_logo.png'),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Pogrešan e-mail ili password';
                        }
                        final bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value);
                        if (!emailValid) {
                          return 'Pogrešan e-mail ili password';
                        }
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      controller: passController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Unesite password";
                        } else if (passController.text.length < 6) {
                          return 'Password ne smije biti kraći od 6 znamenki';
                        }
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {
                        if (_formField.currentState!.validate()) {
                          // print('Success');
                          emailController.clear();
                          passController.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DoctorPage(),
                            ),
                          );
                        }
                        if (emailController.text == 'career@tech387.com' &&
                            passController.text == 'Pass123!') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DoctorPage(),
                            ),
                          );
                        } else {
                          ('pogresan email!');
                        }
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF04E762),
                        ),
                        child: Center(
                          child: Text('Log in'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// if (email == 'career@tech387.com' && password == 'Pass123!') {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const DoctorPage(),
//           ),
//         );
//       } else {
//         ('pogresan email!');
//       }