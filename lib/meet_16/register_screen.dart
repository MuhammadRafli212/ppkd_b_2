import 'package:flutter/material.dart';
import 'package:ppkd_b_2/meet_16/database/db_helper.dart';
import 'package:ppkd_b_2/meet_16/model/user_model.dart';

class RegisterScreenApp extends StatefulWidget {
  const RegisterScreenApp({super.key});
  static const String id = '/register_screen_app';

  @override
  State<RegisterScreenApp> createState() => _RegisterScreenAppState();
}

class _RegisterScreenAppState extends State<RegisterScreenApp> {
  bool isVisible = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDDDDD),
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
                            SizedBox(
                              height: 35,
                              child: TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Email harus diisi';
                                  } else if (!value.contains('@')) {
                                    return 'Email tidak valid';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.mail_rounded),
                                  border: InputBorder.none,
                                  labelText: 'Email',
                                ),
                              ),
                            ),
                            Divider(),
                            SizedBox(
                              height: 35,
                              child: TextFormField(
                                controller: passwordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Password harus diisi';
                                  } else {
                                    return null;
                                  }
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.lock_clock_rounded,
                                  ),
                                  border: InputBorder.none,
                                  labelText: 'Your Password',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              child: TextFormField(
                                controller: usernameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Username harus diisi';
                                  } else {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.person_3_rounded,
                                  ),
                                  border: InputBorder.none,
                                  labelText: 'Username',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              child: TextFormField(
                                controller: nameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Nama harus diisi';
                                  } else {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.person_3),
                                  border: InputBorder.none,
                                  labelText: 'Name',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              child: TextFormField(
                                controller: phoneController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Number harus diisi';
                                  } else {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.phone),
                                  border: InputBorder.none,
                                  labelText: 'Number Phone',
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
                            if (_formKey.currentState!.validate()) {
                              print("Email: ${emailController.text}");
                              print("Name: ${nameController.text}");
                              print("Username: ${usernameController.text}");
                              print("Phone: ${phoneController.text}");
                              print("Password: ${passwordController.text}");
                              DbHelper.registerUser(
                                data: UserModel(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  username: usernameController.text,
                                  name: nameController.text,
                                  phone: phoneController.text,
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Registration Succesfull!'),
                                  backgroundColor: Colors.green,
                                ),
                              );
                              Navigator.pop(context);
                            }
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
                            'Register',
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
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already  Have Account? "),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "login",
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
