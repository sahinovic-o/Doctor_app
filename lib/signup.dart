import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:omars_app/doctor_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, password) async {
    //var client = new http.Client();
    try {
      if (email == 'career@tech387.com' && password == 'Pass123!') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DoctorPage(),
          ),
        );
      } else {
        ('pogresan email!');
      }

      //print(await get(Uri.parse('https://reqres.in/api')));
      //Response response = await get(Uri.parse('https://reqres.in/api/login'));

      //Response response = await get(Uri.https('reqres.in/api', '/example', queryParameters: {'auth': _token}));
      //body: {'email': email, 'password': password});

      // if (response.statusCode == 200) {
      //   var data = jsonDecode(response.body.toString());
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const DoctorPage(),
      //     ),
      //   );
      //   print(data['token']);
      //   print('Login successfully');
      // } else if (response.statusCode == 500) {
      //   print('Interni serer error');
      //   //ispisati na app
      // } else {
      //   print('failed');
      // }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/arena1.png'),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                login(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(
                  child: Text('Log in'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
