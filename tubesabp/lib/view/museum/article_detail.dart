import 'package:flutter/material.dart';

class DetailArticle extends StatelessWidget {
  final Map<String, dynamic> articleDetail;
  const DetailArticle({Key? key, required this.articleDetail})
      : super(key: key);

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
                  image: NetworkImage(articleDetail['link_image']),
                  alignment: Alignment.topCenter),
            )),
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
                    size: 20,
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: const Image(
                    image: AssetImage('assets/logo.png'),
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 70),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.66,
                      child: Text(
                        '${articleDetail['title']}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      '${articleDetail['author']}',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${articleDetail['created_at']}',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: MediaQuery.of(context).size.height*0.65,
                        padding: const EdgeInsets.only(top: 30),
                        decoration: const BoxDecoration(
                          color: Color(0xffE1E6FE),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 7),
                              blurRadius: 10,
                              color: Color(0xFF000000),
                            ),
                          ],
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          width: MediaQuery. of(context). size. width,
                          height: MediaQuery. of(context). size. height,
                          child: SingleChildScrollView(
                            child: Text(
                              '${articleDetail['description']}',
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
