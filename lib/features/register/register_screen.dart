//create register screen
import 'package:ahkeely/core/navigator/named_routes.dart';
import 'package:ahkeely/core/navigator/navigator.dart';
import 'package:ahkeely/features/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //form key
  final formKey = GlobalKey<FormState>();
  //controller for user name
  final TextEditingController userNameController = TextEditingController();
  //controller for phone number
  final TextEditingController phoneNumberController = TextEditingController();
  //controller for email
  final TextEditingController emailController = TextEditingController();
  //controller for password
  final TextEditingController passwordController = TextEditingController();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: _buildRegisterForm(),
    );
  }

  _buildRegisterForm() {
    //create form user name
    //phone number
    //email
    //password
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Register'),
              16.verticalSpace,
              TextFormField(
                controller: userNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter user name';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'User Name',
                ),
              ),
              16.verticalSpace,
              TextFormField(
                controller: phoneNumberController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter phone number';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'Phone Number',
                ),
              ),
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
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              16.verticalSpace,
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              16.verticalSpace,
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    usersData.add(emailController.text);
                    Go.offNamed(NamedRoutes.login);
                    //register user
                  }
                  //register user
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
