import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff0B3B36),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "About Us",
                    style: GoogleFonts.dongle(
                      fontSize: 35,
                      color: const Color(0xff0B3B36)
                    ),
                  ),
                ),
                const Center(
                  child: Image(
                    image: AssetImage("assets/image/logo.PNG"),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Version 1.0",
                    style: GoogleFonts.dongle(
                      fontSize: 24,
                      color: const Color(0xff0B3B36)
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "This Project is Made By \n - Reyhan Septri Asta \n - Azka Zainur Azifa \n - Sabilla Suci Amini \n - Windy Rachmadanti",
                    style: GoogleFonts.dongle(
                      fontSize: 24,
                      color: const Color(0xff0B3B36)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}