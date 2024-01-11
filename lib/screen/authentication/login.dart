import 'package:e_com_app/screen/after_authentication/navbar.dart';
import 'package:e_com_app/utils/login_text_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.all(width * .08),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.001,
            ),
            //img
            Center(
                child: SvgPicture.asset(
              'assets/images/single icon White.svg',
              width: width * 0.4,
            )),
            SizedBox(
              height: height * 0.001,
            ),
            //welcome
            const Center(
              child: Text(
                'Welcome to E-com',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: height * 0.001,
            ),
            const Center(
              child: Text(
                'Sign in to contiune',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            //your email
            const Logintextbtn(
              title: 'Your Email',
              icons: Icons.email_outlined,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            //password
            const Logintextbtn(
              title: 'Password',
              icons: Icons.lock,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            //sign in btn
            Container(
              width: width * 1,
              height: height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.blue[400],
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    MaterialPageRoute(builder: (context) => const NavBar());
                  },
                  child: const Text('Sign In',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            //or
            const Center(
              child: Text(
                'OR',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            //google btn
            Container(
              width: width * 1,
              height: height * 0.07,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  SizedBox(width: width * 0.03),
                  const Icon(
                    Icons.g_mobiledata,
                    color: Colors.blue,
                  ),
                  SizedBox(width: width * 0.2),
                  const Text('Login With Google')
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            //facebook btm
            Container(
              width: width * 1,
              height: height * 0.07,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  SizedBox(width: width * 0.03),
                  const Icon(Icons.facebook),
                  SizedBox(width: width * 0.2),
                  const Text('Login With Facebook')
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            //forgot password?
            const Center(
              child: Text(
                'Forgot Password?',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            //don't have a account....
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have a account? "),
                Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
