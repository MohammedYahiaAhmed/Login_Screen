import 'package:flutter/material.dart';
import 'package:login_desgin/model.dart';

// ignore: must_be_immutable
class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  defaultFormField(
                    controller: emailController,
                    label: "Email",
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your Email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    label: "Password",
                    prefix: Icons.lock,
                    suffix:
                        isPassword ? Icons.visibility_off : Icons.visibility,
                    isPassword: isPassword,
                    type: TextInputType.visiblePassword,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your Password";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // ignore: avoid_print
                          print(emailController.text);
                          // ignore: avoid_print
                          print(passwordController.text);
                        }
                      },
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an Account?'),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Register Now',
                            style: TextStyle(color: Colors.teal),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
