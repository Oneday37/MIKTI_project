import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mikti/Screens/home_page.dart';

import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool _securePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
              child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.chat,
                size: 50,
              ),
              Text(
                "CHATINGAN KUY",
                style: GoogleFonts.oswald(fontSize: 30),
              ),
              Text("L O G I N", style: GoogleFonts.oswald(fontSize: 15)),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _username,
                decoration: InputDecoration(
                    hintText: "Username or email",
                    isDense: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Harap masukkan username";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _password,
                obscureText: _securePass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Password",
                    isDense: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    suffixIcon: IconButton(
                        icon: _securePass
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _securePass = !_securePass;
                          });
                        })),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Harap mengisikan password";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.green[800]),
                  child: const Center(
                      child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
                ),
                onTap: () {
                  Get.to(const HomePage());
                },
              ),
              const SizedBox(
                height: 7,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: Text(
                    "Create Account",
                    style: GoogleFonts.roboto(fontSize: 15),
                  ),
                  onTap: () {
                    Get.to(const RegisterPage());
                  },
                ),
              )
            ],
          ),
        ),
      ))),
    );
  }
}
