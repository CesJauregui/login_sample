import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Header(),
              _Content(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text("Login instantly"),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                  )
                ],
              ),
              width: (size.width / 2) - 30,
              height: 50,
              child: Icon(
                FontAwesomeIcons.facebookF,
                color: Colors.blue[900],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                  )
                ],
              ),
              width: (size.width / 2) - 30,
              height: 50,
              child: Icon(
                FontAwesomeIcons.google,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text("Or login with email/mobile"),
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "Email ID or Mobile Number",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
        SizedBox(
          height: 30,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Remember me"),
              MaterialButton(
                onPressed: () {
                  print("forgot password");
                },
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            print("Oprimiste el boton login");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                "Login to my account",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              style:
                  TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
              text: "Don't have an account?",
            ),
            TextSpan(
              style: TextStyle(
                  color: Colors.blue[900], fontWeight: FontWeight.bold),
              text: "Register Now",
            )
          ]),
        )
      ],
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 400,
        ),
        Icon(Icons.arrow_back_sharp),
        Text(
          "Login Now",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Please login to continue using our app.")
      ],
    );
  }
}
