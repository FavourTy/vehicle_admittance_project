import 'package:flutter/material.dart';
import 'package:vehicle_admittance_dashboard/views/submission_successful.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenoController = TextEditingController();
  final TextEditingController _vehiclenoController = TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Card(
          color: Colors.grey[900],
          clipBehavior: Clip.none,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    top: -30,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey[900],
                      child: const CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 30,
                      ),
                      // child: ClipOval(
                      //   child: Image.asset(
                      //     "assets/images/fuoy_logo.png",
                      //     width: 100,
                      //     height: 100,
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                      // child: Image.asset(
                      //   "assets/images/fuoye-logo.png",
                      // ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  padding: const EdgeInsets.all(32),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        // const Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text('Reset Password',
                        //         style: TextStyle(
                        //             fontSize: 24, fontWeight: FontWeight.bold)),
                        //     CloseButton(),
                        //   ],
                        // ),

                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "full name",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              TextFormField(
                                  key: const ValueKey('emailAdress'),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !value.contains("@")) {
                                      return 'Please enter a valid email.';
                                    }
                                    return null;
                                  },
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 15.0, horizontal: 10.0),
                                      filled: true,
                                      fillColor: Colors.grey,
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 1),
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      )),
                                  controller: _fullnameController),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "vehicle no",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              TextFormField(
                                  key: const ValueKey('emailAdress'),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !value.contains("@")) {
                                      return 'Please enter a valid email.';
                                    }
                                    return null;
                                  },
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 15.0, horizontal: 10.0),
                                      filled: true,
                                      fillColor: Colors.grey,
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 1),
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      )),
                                  controller: _vehiclenoController),
                            ],
                          ),
                        ),

                        // const Text(
                        //   "vehicle no",
                        //   style: TextStyle(color: Colors.grey),
                        // ),
                        // const TextField(
                        //   decoration: InputDecoration(
                        //     border: OutlineInputBorder(),
                        //   ),
                        // ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "phone no",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              TextFormField(
                                  key: const ValueKey('emailAdress'),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !value.contains("@")) {
                                      return 'Please enter a valid email.';
                                    }
                                    return null;
                                  },
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 15.0, horizontal: 10.0),
                                      filled: true,
                                      fillColor: Colors.grey,
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 1),
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      )),
                                  controller: _phonenoController),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "email",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              TextFormField(
                                  key: const ValueKey('emailAdress'),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !value.contains("@")) {
                                      return 'Please enter a valid email.';
                                    }
                                    return null;
                                  },
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 15.0, horizontal: 10.0),
                                      filled: true,
                                      fillColor: Colors.grey,
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 1),
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      )),
                                  controller: _emailController),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const SuccessPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              backgroundColor: Colors.green,
                              minimumSize: const Size(150, 50)),
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
