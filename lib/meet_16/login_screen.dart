import 'package:flutter/material.dart';
import 'package:ppkd_b_2/helper/preference.dart';
import 'package:ppkd_b_2/meet_12/Tugas_8flutter/Tugas_8flutter.dart';
import 'package:ppkd_b_2/meet_16/register_screen.dart';

class LoginScreenApp extends StatefulWidget {
  const LoginScreenApp({super.key});
  static const String id = '/login_screen_app';

  @override
  State<LoginScreenApp> createState() => _LoginScreenAppState();
}

class _LoginScreenAppState extends State<LoginScreenApp> {
  bool isVisible = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDDDDD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Container(
              height: 675,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Selamat Datang Di Naga Hitam',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 32),

                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person_outlined),
                                border: InputBorder.none,
                                labelText: 'Your Email/Id',
                              ),
                            ),
                          ),
                          Divider(),
                          SizedBox(
                            height: 35,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock_outline),
                                border: InputBorder.none,
                                labelText: 'Your Password',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forget Password ?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          PreferenceHandler.saveLogin(true);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Tugas8flutter(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            121,
                            50,
                            192,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: const [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('Or continue with'),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.network(
                            height: 25,
                            width: 25,
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV9_VlmA-hkVdy2ew57xzQCgRN1hWBPYqnCA&s',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.network(
                            height: 25,
                            width: 25,
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfXl4nWKxVLuPM62IhByVYB9I_znNqayK1_Q&s',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.network(
                            height: 25,
                            width: 25,
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvttsBSWnpSMUeIZ7M-fuJSgiFuSlHUeJ76Q&s',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RegisterScreenApp.id);
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
