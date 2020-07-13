import 'package:flutter/material.dart';
import 'package:login_screen/screens/signup_screen.dart';
import 'package:login_screen/widgets/Button_widget.dart';
import 'package:login_screen/widgets/textField_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/plutonlogo.png', height: 230, width: 230),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: "Pluton ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                    text: "Software",
                    style: TextStyle(
                      color: Colors.pink[400],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextFieldWidget(
              labelText: "Email",
              obscureText: false,
              prefixIconData: Icons.mail_outline,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFieldWidget(
                  labelText: "Password",
                  obscureText: true,
                  prefixIconData: Icons.lock_outline,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWidget(
              title: "Sign In",
              hasBorder: false,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 40),
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.pink[400], fontSize: 21),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
