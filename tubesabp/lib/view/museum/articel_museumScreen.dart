import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubesabp/view/museum/article_detail.dart';
import 'package:tubesabp/view/view-model/article_viewmodel.dart';
import 'package:provider/provider.dart';

class ArticelMuseum extends StatefulWidget {
  const ArticelMuseum({Key? key}) : super(key: key);
  @override
  _ArticelMuseumState createState() => _ArticelMuseumState();
}

class _ArticelMuseumState extends State<ArticelMuseum> {
  bool isGet = true;

  @override
  void didChangeDependencies() {
    if (isGet == true) {
      Provider.of<ArticleViewModel>(context, listen: false).getArticle();
      isGet = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final articleProvider = Provider.of<ArticleViewModel>(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, top: 20),
                child: const Image(
                  image: AssetImage('assets/logosamping.png'),
                  height: 40,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Musseum",
                    style: GoogleFonts.mulish(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff09564E)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Article",
                      style: GoogleFonts.mulish(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffFFB61D)))
                ],
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: articleProvider.dataArticle.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailArticle(articleDetail: articleProvider.dataArticle[index])
                                      ));
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
                                    height: 110,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              '${articleProvider.dataArticle[index]['link_image']}'
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Flexible(
                                      child: Text(
                                        '${articleProvider.dataArticle[index]['title']}',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                            color: Color(0xFF0B3B36),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ))
                          );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
