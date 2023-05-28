import 'package:flutter/material.dart';
import 'package:login_auth/components/textfield.dart';
import 'package:login_auth/components/My_button.dart';
import 'package:login_auth/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  void SignInUser() {

  }

  void showErrorMessage(String message) {
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
              child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: const Image(image: AssetImage("assets/images/logo.png")),
            ),

            const SizedBox(  height: 30 ),

            Text(
              "Welcome back!",
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),

            const SizedBox(  height: 25  ),

            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(  height: 10  ),

            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(  height: 10  ),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                )),

            const SizedBox(  height: 25  ),

            MyButton(
              onTap: SignInUser,
              text: ("Sign In"),
            ),

            const SizedBox(  height: 50  ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  )),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or continue with")),
                  const Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Color.fromARGB(255, 61, 61, 61),
                  ))
                ],
              ),
            ),

            const SizedBox(  height: 30  ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SquareTile(imagePath: 'images/google.png'),
                SizedBox(
                  width: 25,
                ),
                SquareTile(imagePath: 'images/apple.png'),
              ],
            ),

            const SizedBox(  height: 30  ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Not a member? "),
                
                SizedBox(  width: 4  ),
                
                Text(
                  "Register Now!",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ))),
    );
  }
}
