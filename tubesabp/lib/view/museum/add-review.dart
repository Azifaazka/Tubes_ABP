import 'package:flutter/material.dart';

import '../../model/api/reviewapi.dart';
import 'MuseumScreen.dart';


class AddReview extends StatefulWidget {
  const AddReview({Key? key}) : super(key: key);

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  ReviewAPI repository = ReviewAPI();
  final _nameController = TextEditingController();
  final _commentController = TextEditingController();
  final _ratingsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Image(image: AssetImage('assets/logosamping.png')),
              SizedBox(height: 15,),
              SizedBox(
                child: TextFormField(
                  controller: _nameController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Masukkkan namamu",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field masih belum diisi';
                    }
                    return null;
                  },
      
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                child: TextFormField(
                  controller: _commentController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Ketikan sesuatu disini...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field masih belum diisi';
                    }
                    return null;
                  },
      
                  // decoration: InputDecoration(hintText: 'Berikan Review ..'),
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: 500,
                child: TextFormField(
                  controller: _ratingsController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "ratings",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field masih belum diisi';
                    }
                    return null;
                  },
      
                  // decoration: InputDecoration(hintText: 'Berikan Review ..'),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () async {
                    bool response = await repository.postData(
                        _nameController.text,
                        _commentController.text,
                        _ratingsController.text,
                        1);
      
                    if (response) {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MuseumScreen()));
                    } else {
                      print('failed to post');
                    }
                  },
                  child: Text('Submit'),
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff0B3B36)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
