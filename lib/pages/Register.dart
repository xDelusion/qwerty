import 'package:first_flutter_project/widgets/TextField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Register extends StatelessWidget {
  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GradientBackground(),
    );
  }
}

class GradientBackground extends StatelessWidget {
  const GradientBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.cyan.shade50, Colors.orange.shade50])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login.png',
                  scale: 40,
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'ROUNDED',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1),
                  child: MyTextField(
                    label: 'Email',
                    hint: 'Enter Your Email',
                  ),
                ),
                MyTextField(label: 'Username', hint: 'Enter Username'),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: false,
                        fillColor: Colors.tealAccent,
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.blue),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        labelText: 'Password',
                        hintText: 'Enter Password',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: RichText(
                    text: TextSpan(
                        text: 'Already a user? ',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        children: [
                          TextSpan(
                              text: 'Login',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.go('/login');
                                },
                              style: TextStyle(color: Colors.blue))
                        ]),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () => context.go('/'), child: Text('Register'))
              ],
            ),
          ),
        )),
      ),
    );
  }
}
