import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/app_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20, // Padding
              ),
              const Text(
                "This is the Login Page",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 20, // Padding
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter your username",
                          labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 36, // Padding
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.home);
                      },
                      child: const Text("Login"),
                      style: TextButton.styleFrom(
                          minimumSize: const Size(120, 42)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
