import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubesabp/view/login&register/login_screen.dart';
import 'package:tubesabp/view/login&register/register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B3B36),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 50, left: 20, bottom: 100),
                child: const Image(
                  image: AssetImage('assets/logo.png'),
                  height: 40,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    'http://prod.static9.net.au/_/media/2018/06/12/17/11/2_museums_thumb.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(bottom: 150),
                  width: 250,
                  child:  Text(
                    'Find All The Museum From Here!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lora(
                                fontSize: 18,
                                fontWeight: FontWeight.w100,
                                color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                          PageRouteBuilder(pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const LoginScreen();
                          }, transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            final tween = Tween(begin: 0.0, end: 2.0);
                            return FadeTransition(
                                opacity: animation.drive(tween), child: child);
                          }),
                        );
                          },
                          child: Text('Log in',style: GoogleFonts.lora(fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: const Color(0xFF0B3B36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                          PageRouteBuilder(pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const RegisterScreen();
                          }, transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            final tween = Tween(begin: 0.0, end: 2.0);
                            return FadeTransition(
                                opacity: animation.drive(tween), child: child);
                          }),
                        );
                          },
                          child: Text('Register',
                              style: GoogleFonts.lora(fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: const Color(0xFF0B3B36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
