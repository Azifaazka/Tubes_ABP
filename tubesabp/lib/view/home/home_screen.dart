import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/usermodel.dart';
import '../content/content_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, right: 10, top: 30),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi!",
                            style: GoogleFonts.lora(
                                fontSize: 20,
                                color: const Color(0xff0B3B36),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Enjoy Your Tour",
                            style: GoogleFonts.lora(
                                fontSize: 30,
                                color: const Color(0xff0B3B36),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 10),
                      child: Image.network(
                        "https://www.pngitem.com/pimgs/m/79-791921_male-profile-round-circle-users-profile-round-icon.png",
                        width: 60,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 35, right: 16, top: 30),
                child: Text(
                  "Article Banner",
                  style: GoogleFonts.lora(
                      fontSize: 14,
                      color: const Color(0xff0B3B36),
                      fontWeight: FontWeight.bold),
                ),
              ),
              PopularArticle(reverse: false),
              Container(
                margin: const EdgeInsets.only(left: 35, right: 16, top: 30),
                child: Text(
                  "What We Do",
                  style: GoogleFonts.lora(
                      fontSize: 14,
                      color: const Color(0xff0B3B36),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Color(0xff0B3B36)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Text("       "),
                              Icon(
                                Icons.museum_rounded,
                                size: 30.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "      Temui Museum      ",
                                style: GoogleFonts.lora(
                                  fontSize: 12,
                                  color: const Color(0xff0B3B36),
                                ),
                              ),
                              Text(
                                "    yang menarik dan     ",
                                style: GoogleFonts.lora(
                                  fontSize: 12,
                                  color: const Color(0xff0B3B36),
                                ),
                              ),
                              Text(
                                "   menjadi wishlist untuk ",
                                style: GoogleFonts.lora(
                                  fontSize: 12,
                                  color: const Color(0xff0B3B36),
                                ),
                              ),
                              Text(
                                "    kunjungi disini!    ",
                                style: GoogleFonts.lora(
                                  fontSize: 12,
                                  color: const Color(0xff0B3B36),
                                ),
                              ),
                              Text("       "),
                            ],
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Color(0xff0B3B36)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Text("       "),
                              Icon(
                                Icons.reviews,
                                size: 30.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "     Lihat dan Tinggalkan      ",
                                style: GoogleFonts.lora(
                                  fontSize: 12,
                                  color: const Color(0xff0B3B36),
                                ),
                              ),
                              Text(
                                "    jejak terhadap museum     ",
                                style: GoogleFonts.lora(
                                  fontSize: 12,
                                  color: const Color(0xff0B3B36),
                                ),
                              ),
                              Text(
                                "  yang telah kamu kunjungi ",
                                style: GoogleFonts.lora(
                                  fontSize: 12,
                                  color: const Color(0xff0B3B36),
                                ),
                              ),
                              Text(
                                "    disini!    ",
                                style: GoogleFonts.lora(
                                  fontSize: 14,
                                  color: const Color(0xff0B3B36),
                                ),
                              ),
                              Text("       "),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 35, right: 16, top: 10, bottom: 10),
                child: Text(
                  "Quotes",
                  style: GoogleFonts.lora(
                      fontSize: 14,
                      color: const Color(0xff0B3B36),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xff0B3B36),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://pickaface.net/gallery/avatar/victorbrazill53237ffa71271.png"),
                      radius: 30,
                    ),
                    title: Text(
                      'Robert Downey',
                      style: GoogleFonts.lora(
                          fontSize: 14,
                          color: const Color(0xff0B3B36),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '"We travel not to escape life, but for life not to escape us."',
                      style: GoogleFonts.lora(
                          fontSize: 14,
                          color: const Color(0xff0B3B36),
                          fontWeight: FontWeight.w100),
                    ),
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
