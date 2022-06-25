import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisclamerScreen extends StatelessWidget {
  const DisclamerScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(16),
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
              const SizedBox(height: 20,),
              const Center(
                child: Image(
                  image: AssetImage("assets/image/logo.PNG"),
                ),
              ),
              const SizedBox(height: 20,),
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
                  "All pictures belong to their respective copyrights owners Hi! Story does not have any affiliation with content providers",
                  textAlign: TextAlign.center,
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
    );
  }
}