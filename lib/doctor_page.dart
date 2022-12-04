import 'package:flutter/material.dart';
import 'package:omars_app/signup.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset(
          'images/crni_logo.png',
          height: 32,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Text(
                            'Are you sure you want to log out from the console ? '),
                        actions: [
                          TextButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: Text('Yes'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ));
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const SignUpScreen()),
              // );
            },
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Image.asset('images/doctor.png'),
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text(
                          'My profile',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Title(
                        color: Colors.black,
                        child:
                            Text('Dr.Jon Doe', style: TextStyle(fontSize: 22)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'Patient list for today',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/sick.jfif',
                    width: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text(
                          'Alen K.',
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('16:00-Common cold',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/armpain.jfif',
                    width: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text('Amy F.', style: TextStyle(fontSize: 14)),
                      ),
                      Title(
                        color: Colors.black,
                        child: Text(
                          '16:30-Right Arm Pain',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/covid.jfif',
                    width: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text('Kim H.', style: TextStyle(fontSize: 14)),
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('16:30-Covid-19 ',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Title(
                    color: Colors.black,
                    child: Text(
                      'Tomorrow',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/andy.jfif',
                    width: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text('Andy A.', style: TextStyle(fontSize: 14)),
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('08:00-Common Cold ',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/bell.jfif',
                    width: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text('Bell B.', style: TextStyle(fontSize: 14)),
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('09:30-Headcache',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/fiona.jfif',
                    width: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text('Fiona L.', style: TextStyle(fontSize: 14)),
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('10:10-Covid-19 ',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/nezir.jfif',
                    width: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text('Nezir B.', style: TextStyle(fontSize: 14)),
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('11:00-Broken Heart ',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Title(
                    color: Colors.black,
                    child: Text(
                      'Tomorrow',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/peter.jfif',
                    width: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text('Peter P.', style: TextStyle(fontSize: 14)),
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('09:15-Covid-19 ',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/sam.jfif',
                    width: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text('Sam V.', style: TextStyle(fontSize: 14)),
                      ),
                      Title(
                        color: Colors.black,
                        child: Text('10:00-Covid-19 ',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
