import 'package:flutter/material.dart';
import 'package:vehicle_admittance_dashboard/views/home_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text(
          'Vehicle Registration System',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fuoy_logo.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'Welcome to Vehicle Registration System',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Overview of Registration Process
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Registration Process',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  ' Fill out the registration form with your vehicle details.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ' Verify your information on the confirmation page.',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  ' Receive a confirmation of your registration.',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          // Call-to-Action Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  backgroundColor: Colors.green,
                  minimumSize: const Size(150, 50)),
              child: const Text(
                'Register now',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          //   child: ElevatedButton(
          //     onPressed: () {
          //       Navigator.of(context).push(
          //         MaterialPageRoute(builder: (context) => MyHomePage()),
          //       );
          //     },
          //     child: const Text(
          //       'Register Now',
          //       style: TextStyle(fontSize: 18),
          //     ),
          //   ),
          // ),
          // Benefits Section
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Benefits of the System',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(height: 10),
                Text(
                  ' Streamlined registration process',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  'Enhanced security measures',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  ' Time-saving features',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
