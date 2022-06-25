// import 'package:firebase_auth/firebase_auth.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tubesabp/view/login&register/welcome_screen.dart';
import 'package:tubesabp/view/profile/about_us.dart';
import 'package:tubesabp/view/profile/contact_us.dart';
import 'package:tubesabp/view/profile/disclamer_screen.dart';
import 'package:tubesabp/view/profile/feedback_screen.dart';
import 'package:http/http.dart' as http;
import '../../repository/Global.dart';
import '../../repository/AuthRepo.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  // logoutPress() async {
  //     http.Response response = await AuthRepo.postLogOut(emailEditingController.Text);
  //     Map responseMap = jsonDecode(response.headers.toString());
  //     if (response.statusCode == 200) {
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (BuildContext context) => const WelcomeScreen(),
  //           ));
  //     } else {
  //       errorSnackBar(context, responseMap.values.first);
  //     }
  //     errorSnackBar(context, 'enter all required fields');
  // }

  var url = Uri.parse('http://192.168.64.63:8000/api/profile');

  Future<List<dynamic>> _Users() async {
    var result = await http.get(url);
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Profile',
                style: TextStyle(
                    color: Color(0xFF0B3B36),
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://www.pngitem.com/pimgs/m/79-791921_male-profile-round-circle-users-profile-round-icon.png",
                height: 100,
                width: 100,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Azka Zainur Azifa',
                    style: TextStyle(
                        color: Color(0xFF0B3B36),
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(pageBuilder:
                            (context, animation, secondaryAnimation) {
                          return const ContactForm();
                        }, transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          final tween = Tween(begin: 0.0, end: 2.0);
                          return FadeTransition(
                              opacity: animation.drive(tween), child: child);
                        }),
                      );
                    },
                    child: const Text('Contact Us',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0B3B36),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(pageBuilder:
                            (context, animation, secondaryAnimation) {
                          return const AboutUs();
                        }, transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          final tween = Tween(begin: 0.0, end: 2.0);
                          return FadeTransition(
                              opacity: animation.drive(tween), child: child);
                        }),
                      );
                    },
                    child: const Text('About Us',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0B3B36),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(pageBuilder:
                            (context, animation, secondaryAnimation) {
                          return const DisclamerScreen();
                        }, transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          final tween = Tween(begin: 0.0, end: 2.0);
                          return FadeTransition(
                              opacity: animation.drive(tween), child: child);
                        }),
                      );
                    },
                    child: const Text('Disclaimer',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0B3B36),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(pageBuilder:
                            (context, animation, secondaryAnimation) {
                          return const FeedbackScreen();
                        }, transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          final tween = Tween(begin: 0.0, end: 2.0);
                          return FadeTransition(
                              opacity: animation.drive(tween), child: child);
                        }),
                      );
                    },
                    child: const Text('Feedback',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0B3B36),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {

                    // logoutPress();

                       Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const WelcomeScreen()));

                    // logout(context);
                  },
                  child: const Text('Log out',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: const Color(0xFF0B3B36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
            ),
          ],
        ),
      ),
    );
  }

  // Future<void> logout(BuildContext context) async {
  //   await FirebaseAuth.instance.signOut();
  //   Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  // }
}
