import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/tugas8/botnav.dart';

class Tugas6 extends StatefulWidget {
  const Tugas6({super.key});

  @override
  State<Tugas6> createState() => _Tugas6State();
}

class _Tugas6State extends State<Tugas6> {
  // final bool _isPasswordHidden = true;
  final _fromKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: false,
        leading: Icon(Icons.arrow_back_ios),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _fromKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),
              Text(
                "Sign In to your account",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 30),

              // Email Address
              Text(
                "Email Address",
                style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 141, 141, 141),
                ),
              ),
              SizedBox(height: 15),

              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Masukkan Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Email tidak boleh kosong";
                  if (!value.contains('@')) return "Email tidak valid";
                  return null;
                },
              ),

              SizedBox(height: 25),

              // Password
              Text(
                "Password",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(height: 15),

              TextFormField(
                controller: _passwordController,
                obscureText: _obsecureText,
                decoration: InputDecoration(
                  hintText: "Masukkan Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    },
                    icon: Icon(
                      _obsecureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Password tidak boleh kosong";
                  return null;
                },
              ),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 228, 139, 112),
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Login
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_fromKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Login Berhasil"),
                                Lottie.asset(
                                  "assets/images/animations/result page success motion design.json",
                                ),
                              ],
                            ),
                            content: Text(
                              "Welcome Back Again",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  // Navigator.of(context).pop(); // tutup dialog
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => CheckboxTugas(),
                                  //   ),
                                  // );
                                  context.pushReplacement(MainScreen());
                                },
                                child: Text("Lanjutkan"),
                              ),
                            ],
                          );
                        },
                      );
                      // context.push(CheckboxTugas());
                    }
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 53, 43, 202),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Sign Up
              Align(
                child: Text.rich(
                  TextSpan(
                    text: "Don’t have an account?",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "  Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: const Color.fromARGB(255, 228, 139, 112),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Sign In With
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 8),
                  Text(
                    "Or Sign In With",
                    style: TextStyle(fontSize: 12.5, color: Colors.grey),
                  ),
                  SizedBox(width: 8),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 25),

              // Icon Google & Facebook
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Google
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ButtonStyle(elevation: WidgetStateProperty.all(0)),
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/google_logo.png',
                        height: 50,
                        width: 24,
                      ),
                      label: Text(
                        "Google",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),

                  // Facebook
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ButtonStyle(elevation: WidgetStateProperty.all(0)),
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/facebook_logo.png',
                        height: 50,
                        width: 24,
                      ),
                      label: Text(
                        "Facebook",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),

              // Join Us
              Text.rich(
                TextSpan(
                  text: "Don’t have an account?",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: "  Join Us",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: const Color.fromARGB(255, 228, 139, 112),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
