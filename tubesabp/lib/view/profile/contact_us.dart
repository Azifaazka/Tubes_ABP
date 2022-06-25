import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<_ContactFormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child : Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height : 100),
              const Text(
                "Contact Us",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff0B3B36),
                ),
              ),
              const SizedBox(height : 50),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Nama Lengkap",
                  prefixIcon: const Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty){
                    return 'Nama masih belum diisi';
                  }
                },
              ),
              const SizedBox(height : 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty){
                    return 'Email masih belum diisi';
                  }
                },
              ),
              const SizedBox(height : 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Phone",
                  prefixIcon: const Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty){
                    return 'Nomor masih belum diisi';
                  }
                },
              ),
              const SizedBox(height : 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Message",
                  prefixIcon: const Icon(Icons.message),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty){
                    return 'pesan masih belum diisi';
                  }
                },
              ),
              const SizedBox(height : 40),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style:
                    TextButton.styleFrom(backgroundColor: const Color(0xff0B3B36)),
                  onPressed: () {},
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      color: Color(0xffffffff),
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
