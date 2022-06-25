import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../view-model/ReviewViewModel.dart';

class allreview extends StatefulWidget {
  @override
  _allreviewState createState() => _allreviewState();
  allreview(this.id);
  final int id;
}

class _allreviewState extends State<allreview> {
  bool isGet = true;

  @override
  void didChangeDependencies() {
    if (isGet == true) {
      Provider.of<ReviewViewModel>(context, listen: false).getKomen(widget.id);
      Provider.of<ReviewViewModel>(context, listen: false)
          .filterKomen(widget.id);
      isGet = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final ReviewProvider = Provider.of<ReviewViewModel>(context);
    ReviewProvider.filterKomen(widget.id);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0B3B36),
          title: const Text("Review", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
        body: SizedBox(
            height: MediaQuery.of(context).size.height * 0.66,
            width: double.infinity,
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                itemCount: ReviewProvider.listkomen.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ReviewProvider.listkomen[index].name,
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(ReviewProvider.listkomen[index].comment)
                        ],
                      ));
                })));
  }
}
