import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _repassword = TextEditingController();
  bool _securePass = true;
  bool _secureRepeatPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Column(
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
                  Text("R E G I S T E R",
                      style: GoogleFonts.oswald(fontSize: 15)),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Harap memasukkan e-mail";
                      }
                      RegExp emailFormat =
                          RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                      if (emailFormat.hasMatch(value)) {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _username,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Username",
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Harap memasukkan username";
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
                        labelText: "Password",
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
                    height: 15,
                  ),
                  TextFormField(
                    controller: _repassword,
                    obscureText: _secureRepeatPass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        labelText: "Repeat Password",
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: IconButton(
                            icon: _securePass
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _secureRepeatPass = !_secureRepeatPass;
                              });
                            })),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Harap mengisikan kolom ini";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.green[800]),
                      child: const Center(
                          child: Text(
                        "REGISTER",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Akun telah didaftarkan")));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
