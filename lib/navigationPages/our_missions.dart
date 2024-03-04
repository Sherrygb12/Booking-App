import 'package:bookingapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OurMissions extends StatefulWidget {
  const OurMissions({super.key});

  @override
  State<OurMissions> createState() => _OurMissionsState();
}

class _OurMissionsState extends State<OurMissions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.04,
                ),
                Text(
                  'Our Mission: Your Success',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/students.jpg',
                        ),
                        radius: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                          title: Text(
                            'What we do',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.purple[200]),
                          ),
                          subtitle: Text(
                            'Our mission is simple: your success and well-being. We aim to provide a seamless connection to the perfect spa experience, making relaxation, rejuvenation, and escape from the daily grind not just a goal, but a reality.',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Text(
                            'What we offer',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.purple[200]),
                          ),
                          subtitle: Text(
                            'Choice and simplicity at your fingertipa. Our app offers a wide range of spa treatments, easy booking, and personalized experiences with exclusive deals. More than appointments, we offer menorable moments',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/list.jpg'),
                        radius: 40,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/certificate.jpg'),
                        radius: 40,
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            'What you get',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.purple[200]),
                          ),
                          subtitle: Text(
                            "Unlock relaxation and rejuvenation effortlessly. Our app gives you top spa services, flexible scheduling, and quality experiences. It's not just a booking, it's an investment in your well-being.",
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}
