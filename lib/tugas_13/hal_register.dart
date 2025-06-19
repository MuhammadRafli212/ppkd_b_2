import 'package:flutter/material.dart';
import 'package:ppkd_b_2/tugas_13/db_login.dart';
import 'package:ppkd_b_2/tugas_13/model_login.dart';

class HalRegister extends StatefulWidget {
  const HalRegister({super.key});
  static const String id = '/register_screen_app';

  @override
  State<HalRegister> createState() => _HalRegisterState();
}

class _HalRegisterState extends State<HalRegister> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _handleRegister() {
    if (_formKey.currentState!.validate()) {
      DbLogin.registerUser(
        data: ModelLogin(
          email: emailController.text,
          password: passwordController.text,
          username: usernameController.text,
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Registration Successful!'),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF697565),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Container(
                height: 750,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Register',
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
                            TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Email harus diisi';
                                } else if (!value.contains('@')) {
                                  return 'Email tidak valid';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.mail_rounded),
                                border: InputBorder.none,
                                labelText: 'Email',
                              ),
                            ),
                            const Divider(),
                            TextFormField(
                              controller: passwordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password harus diisi';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                border: InputBorder.none,
                                labelText: 'Password',
                              ),
                            ),
                            const Divider(),
                            TextFormField(
                              controller: usernameController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Username harus diisi';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                border: InputBorder.none,
                                labelText: 'Username',
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
                            'Forget Password?',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: _handleRegister,
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
                            'Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Row(
                        children: [
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
                          for (var url in [
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV9_VlmA-hkVdy2ew57xzQCgRN1hWBPYqnCA&s',
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfXl4nWKxVLuPM62IhByVYB9I_znNqayK1_Q&s',
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvttsBSWnpSMUeIZ7M-fuJSgiFuSlHUeJ76Q&s',
                          ])
                            ElevatedButton(
                              onPressed: () {},
                              child: Image.network(url, height: 25, width: 25),
                            ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account? "),
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              "Login",
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
      ),
    );
  }
}
