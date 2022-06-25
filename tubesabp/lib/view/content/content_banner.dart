import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PopularMuseum extends StatelessWidget {
  PopularMuseum({Key? key, required this.reverse}) : super(key: key);

  final List<String> urlImageAds = [
    'https://cdn-imgix.headout.com/mircobrands-content/image/4e9ebbf7ff686d29a41f4af39e8386ea-louvre%20museum.jpg',
    'https://cdn.getyourguide.com/img/location/60096fc0e4e89.jpeg/99.jpg',
    'https://d3d00swyhr67nd.cloudfront.net/_source/BRIM_location_image_1.jpg',
    'https://img.traveltriangle.com/blog/wp-content/uploads/2019/06/Cairo-Museums1.jpg',
  ];
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 4,
        options: CarouselOptions(
          height: 180,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval: const Duration(seconds: 4),
        ),
        itemBuilder: (context, index, realindex) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                        urlImageAds[index],
                      ),
                      fit: BoxFit.cover),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 5,
                      color: Color.fromARGB(117, 0, 0, 0),
                    )
                  ]),
            ),
          );
        });
  }
}

class PopularArticle extends StatelessWidget {
  PopularArticle({Key? key, required this.reverse}) : super(key: key);

  final List<String> urlImageAds = [
    'https://static01.nyt.com/images/2019/06/28/arts/28POSTERS01/28POSTERS01-articleLarge-v2.jpg',
    'https://static01.nyt.com/images/2019/06/28/arts/28POSTERS05/merlin_156222093_ee6b2fd9-1d51-4667-ae4c-3c8a5d211525-articleLarge.jpg',
    'https://asset.kompas.com/crops/wFjCCEBchOaSCJY-nEh9jQFhyqM=/27x0:1107x720/750x500/data/photo/2020/07/16/5f0f9f5611aa3.jpg',
  ];
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          height: 180,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval: const Duration(seconds: 4),
        ),
        itemBuilder: (context, index, realindex) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                        urlImageAds[index],
                      ),
                      fit: BoxFit.cover),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 5,
                      color: Color.fromARGB(117, 0, 0, 0),
                    )
                  ]),
            ),
          );
        });
  }
}