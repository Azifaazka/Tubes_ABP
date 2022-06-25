import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../view-model/museumViewModel.dart';
import 'deskripsi.dart';

class MuseumScreen extends StatefulWidget {
  const MuseumScreen({Key? key}) : super(key: key);
  @override
  _MuseumScreenState createState() => _MuseumScreenState();
}

class _MuseumScreenState extends State<MuseumScreen> {
  bool isGet = true;

  @override
  void didChangeDependencies() {
    if (isGet == true) {
      Provider.of<MuseumViewModel>(context, listen: false).getMuseum();
      isGet = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final MuseumProvider = Provider.of<MuseumViewModel>(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/logosamping.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.all(5),
                  child: ListView.builder(
                    itemCount: MuseumProvider.listmuseum.length,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      // ignore: unnecessary_new
                      return new Container(
                          margin: const EdgeInsets.all(2),
                          height: 130,
                          width: 400,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new Deskripsi(
                                            deskripsiMuseum: MuseumProvider
                                                .listmuseum[index])));
                              },
                              child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: Color(0xFF0B3B36),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          //set border radius to 50% of square height and width
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  '${MuseumProvider.listmuseum[index]['link_image']}'),
                                              fit: BoxFit.fill
                                              //change image fill type
                                              ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              const SizedBox(height: 20),
                                              Container(
                                                width: 55,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        width: 1,
                                                        color: const Color(
                                                            0xFF0B3B36)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Row(
                                                  children: [
                                                    const SizedBox(width: 5),
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[800]),
                                                    Text(
                                                      '${MuseumProvider.listmuseum[index]['rating'].toString()}',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  width: 200,
                                                  child: Text(
                                                    '${MuseumProvider.listmuseum[index]['nama']}',
                                                    textAlign: TextAlign.center,
                                                    // ignore: unnecessary_const
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFF0B3B36),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                              Text(
                                                  '${MuseumProvider.listmuseum[index]['kota']}',
                                                  style: TextStyle(
                                                      color: Colors.grey[600],
                                                      fontSize: 15))
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ))));
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
