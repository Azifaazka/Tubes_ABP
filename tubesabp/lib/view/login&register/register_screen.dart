import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubesabp/repository/AuthRepo.dart';
import 'package:http/http.dart' as http;
import '../../repository/Global.dart';
import '../home/home_nav.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameEditingController = TextEditingController();
  final usernameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final firstPasswordEditingController = TextEditingController();
  final secondPasswordEditingController = TextEditingController();

  String? errorMessage;
  
  // final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    final nameField = TextFormField(
      controller: nameEditingController,
      validator: (value) {
        RegExp regex = RegExp(r'^.{4,}$');
        if (value!.isEmpty) {
          return ("Please enter your name");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid name");
        }
        return null;
      },
      onSaved: (value) {
        nameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 236, 240, 243),
          filled: true,
          prefixIcon: const Icon(Icons.person),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Type Name Here...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final usernameField = TextFormField(
      controller: usernameEditingController,
      validator: (value) {
        RegExp regex = RegExp(r'^.{4,}$');
        if (value!.isEmpty) {
          return ("Please enter your username");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid username (Min. 4 Character)");
        }
        return null;
      },
      onSaved: (value) {
        usernameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 236, 240, 243),
          filled: true,
          prefixIcon: const Icon(Icons.person),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Type Username Here...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final emailField = TextFormField(
      controller: emailEditingController,
      validator: (value) {
        if (value!.isEmpty) {
          return ("please enter your email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-].[a-z]").hasMatch(value)) {
          return ("Please enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 236, 240, 243),
          filled: true,
          prefixIcon: const Icon(Icons.email),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Type Email Here...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final firstPasswordField = TextFormField(
      obscureText: true,
      controller: firstPasswordEditingController,
      validator: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Please enter your password");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid password (Min. 6 Character");
        }
        return null;
      },
      onSaved: (value) {
        firstPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 236, 240, 243),
          filled: true,
          prefixIcon: const Icon(Icons.lock),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Type Password Here...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final secondPasswordField = TextFormField(
      obscureText: true,
      controller: secondPasswordEditingController,
      validator: (value) {
        if (secondPasswordEditingController.text !=
            firstPasswordEditingController.text) {
          return "password dont match";
        }
        return null;
      },
      onSaved: (value) {
        secondPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 236, 240, 243),
          filled: true,
          prefixIcon: const Icon(Icons.lock),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password Here...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    registerPress() async {
    if (nameEditingController.text.isNotEmpty && usernameEditingController.text.isNotEmpty
        && emailEditingController.text.isNotEmpty && firstPasswordEditingController.text.isNotEmpty &&
        secondPasswordEditingController.text.isNotEmpty) {
      http.Response response =
          await AuthRepo.postRegister(nameEditingController.text,usernameEditingController.text,
          emailEditingController.text, secondPasswordEditingController.text);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const HomeNav(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first[0]);
      }
    } else {
      errorSnackBar(context, 'email not valid');
    }
  }


    final registerButton = Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: () {
          registerPress();
        },
        child: Text(
          "Sign up",
          style: GoogleFonts.dongle(color: Colors.black, fontSize: 30),
        ),
      ),
    );

    final haveAccount = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Do you Have An Account?",
            style: GoogleFonts.lora(color: Colors.white)),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:  Text(
            "Log in",
            style: GoogleFonts.lora(color: Colors.white),
          ),
        ),
      ],
    );

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff0B3B36),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign up",
                  style: GoogleFonts.dongle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Name",
                  style: GoogleFonts.dongle(fontSize: 28, color: Colors.white),
                ),
                nameField,
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Username",
                  style: GoogleFonts.dongle(fontSize: 28, color: Colors.white),
                ),
                usernameField,
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Email",
                  style: GoogleFonts.dongle(fontSize: 28, color: Colors.white),
                ),
                emailField,
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.dongle(fontSize: 28, color: Colors.white),
                ),
                firstPasswordField,
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Confirm Password",
                  style: GoogleFonts.dongle(fontSize: 28, color: Colors.white),
                ),
                secondPasswordField,
                haveAccount,
                const SizedBox(
                  height: 20,
                ),
                registerButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
