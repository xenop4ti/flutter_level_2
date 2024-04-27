import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/pages/homepage.dart';
import 'package:flutter_figma/pages/register.dart';

class Login extends StatelessWidget {
  static const routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          Container(
              height: 150,
              // color: Colors.amber,
              child: Image.asset('assets/logo/logo-only.png',
                  fit: BoxFit.contain)),
          TextField(
            decoration: InputDecoration(
                label: Text("Email"),
                border: InputBorder.none,
                fillColor: Colors.grey.shade300,
                filled: true),
          ),
          SizedBox(
            height: 8,
          ),
          PasswordField(),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomePage.routeName);
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffEC5F5F),
                  foregroundColor: Color(0xffffffff),
                  padding: EdgeInsets.symmetric(vertical: 10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: () {}, child: Text('Forgot Password?')),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  child: Divider(
                endIndent: 20,
              )),
              Text('or'),
              Expanded(
                  child: Divider(
                indent: 20,
              ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Login.routeName);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/facebook.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Login with Facebook",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff1976D2),
                  foregroundColor: Color.fromARGB(255, 117, 99, 99),
                  padding: EdgeInsets.symmetric(vertical: 10)),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Login.routeName);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Login with Google"),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffeeeeee),
                  foregroundColor: Color(0xff000000),
                  padding: EdgeInsets.symmetric(vertical: 10)),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have aaccount?'),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Register.routeName);
                  },
                  child: Text("Sign Up"))
            ],
          )
        ],
      ),
    ));
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
          label: Text("Password"),
          border: InputBorder.none,
          fillColor: Colors.grey.shade300,
          filled: true,
          suffixIcon: Container(
            height: 0,
            //color: Colors.amber,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off
                  // color: Colors.grey,
                  ),
            ),
          )),
    );
  }
}
