import 'package:flutter/material.dart';
import './pages/login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  static const routeName = "/welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.35,
              //color: Colors.amber,
              child: Image.asset("assets/logo/logo.png", fit: BoxFit.cover),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "Welcome to Ajheryuk",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Best and popular apps for live education course from home",
              style: TextStyle(fontSize: 16, color: Color(0xff8C8C8C)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 75,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Login.routeName);
                },
                child: Text("Get Started"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffEC5F5F),
                    foregroundColor: Color(0xffffffff),
                    padding: EdgeInsets.symmetric(vertical: 10)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
