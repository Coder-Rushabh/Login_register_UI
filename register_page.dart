import 'package:flutter/material.dart';
import 'package:login_auth/components/textfield.dart';
import 'package:login_auth/components/square_tile.dart';
import 'package:login_auth/components/My_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void SignUpUser() async {
   
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

            const SizedBox(  height: 20  ),
            
            Container(
              height: 100,
              width: 100,
              child: const Image(image: AssetImage("assets/images/logo.png")),
            ),

            const SizedBox(  height: 20  ),

            Text(
              "Let's create an account for you!",
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

            MyTextField(
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              obscureText: true,
            ),

            const SizedBox(  height: 30  ),

            MyButton(
              onTap: SignUpUser,
              text: ("Sign Up"),
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
                      padding:  EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or continue with")),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
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

            const SizedBox( height: 30  ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                 Text("Already have an account? "),
                 SizedBox(
                  width: 4,
                ),
                Text(
                  "Login here!",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(  height: 20  ),
            
          ],
        ),
      ))),
    );
  }
}
