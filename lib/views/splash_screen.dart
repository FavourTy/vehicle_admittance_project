import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_admittance_dashboard/views/home_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Vehicle Registration",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "System",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText("Fast and Reliable",
                          textStyle: const TextStyle(color: Colors.white)),
                      TyperAnimatedText('Simplify Your Entry',
                          textStyle: const TextStyle(color: Colors.white)),
                      TyperAnimatedText('Secure',
                          textStyle: const TextStyle(color: Colors.white)),
                      //TyperAnimatedText('- W.Edwards Deming'),
                    ],
                    repeatForever: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Register now',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/listic.jpg",
                height: 350,
                fit: BoxFit.contain,
              )
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          const Divider(),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  child: Row(
                children: [
                  Icon(
                    Icons.speed,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Efficiency",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Streamlined registration process",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              )),
              SizedBox(
                  child: Row(
                children: [
                  Icon(
                    Icons.security,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Security",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Enhanced security measures",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              )),
              SizedBox(
                  child: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Speed",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Time-saving features",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              )),
            ],
          )
        ],
      ),
    );
  }
}
