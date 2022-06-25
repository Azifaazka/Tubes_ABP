import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Feedback',
                style: TextStyle(
                    color: Color(0xFF0B3B36),
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            const SizedBox(height: 40),
            const Text('Do you have any feedback for us?',
                style: TextStyle(
                    color: Color(0xFF0B3B36),
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 70.0),
                  labelText: ' Tell us what is on your mind........',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xFF0B3B36)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFF0B3B36)),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 100,
              height: 30,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Color(0xFF0B3B36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
