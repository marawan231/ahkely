//create login screen
import 'package:ahkeely/core/navigator/named_routes.dart';
import 'package:ahkeely/core/navigator/navigator.dart';
import 'package:ahkeely/features/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

//email controller
final TextEditingController emailController = TextEditingController();
//password controller
final TextEditingController passwordController = TextEditingController();
//form key
final formKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: Colors.white)),
      ),
      body: _buildLogin(),
    );
  }

  _buildLogin() {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Login'),
              16.verticalSpace,
              TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter valid email';
                  }
                  if (!usersData.contains(value.trim())) {
                    return ' Email not found';
                  }

                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              16.verticalSpace,
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              16.verticalSpace,
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Go.offNamed(NamedRoutes.home);
                    // Navigator.pushNamed(context, Routes.homeRoute);
                  }
                  // Go.offNamed(NamedRoutes.register);
                  // Navigator.pushNamed(context, Routes.registerRoute);
                },
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
