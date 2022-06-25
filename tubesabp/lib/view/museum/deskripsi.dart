import 'package:flutter/material.dart';

import 'Allreview.dart';
import 'add-review.dart';
import 'maps.dart';

class Deskripsi extends StatelessWidget {
  final Map<String, dynamic> deskripsiMuseum;
  const Deskripsi({Key? key, required this.deskripsiMuseum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage('${deskripsiMuseum['link_image']}'),
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const Spacer(),
              Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: const Image(
                    image: AssetImage('assets/logo.png'),
                    height: 40,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(height: 70),
                  Text(
                    '${deskripsiMuseum['kota']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${deskripsiMuseum['nama']}',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 55,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow[800]),
                        Text(
                          '${deskripsiMuseum['rating'].toString()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 30),
            margin: const EdgeInsets.only(top: 180),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 7),
                  blurRadius: 10,
                  color: Color(0xFF000000),
                ),
              ],
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Location',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0B3B36)),
                  ),
                  SizedBox(
                    width: 350,
                    child: Text(
                      '${deskripsiMuseum['lokasi']}',
                      maxLines: 15,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14, color: Color(0xFF0B3B36)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0B3B36)),
                  ),
                  SizedBox(
                    width: 350,
                    child: Text(
                      '${deskripsiMuseum['deskripsi']}',
                      maxLines: 15,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14, color: Color(0xFF0B3B36)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Open',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0B3B36)),
                  ),
                  Text(
                    '${deskripsiMuseum['open']}',
                    style: TextStyle(fontSize: 14, color: Color(0xFF0B3B36)),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) =>
                                        new maps(deskripsiMuseum)));
                          },
                          child: const Text('See Maps',
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
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) =>
                                        new allreview(deskripsiMuseum['id']!)));
                          },
                          child: const Text('See All Review',
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
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new AddReview()));
                          },
                          child: const Text('Make Review',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF0B3B36),
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
