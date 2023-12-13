import 'package:first_flutter_project/widgets/TextField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserLoginPg extends StatelessWidget {
  UserLoginPg({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/login.png',
            scale: 40,
          ),
          Text('Login',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'ROUNDED')),
          MyTextField(
              label: 'Username or Email', hint: 'Enter Username or Email'),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 25, right: 25),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.tealAccent,
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(22))),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: RichText(
              text: TextSpan(
                  text: 'Not a user? ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  children: [
                    TextSpan(
                        text: 'Register',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go('/register');
                          },
                        style: TextStyle(color: Colors.blue))
                  ]),
            ),
          ),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              context.go('/');
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
