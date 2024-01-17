import 'package:e_com_app/screen/after_authentication/navbar.dart';
import 'package:e_com_app/utils/login_text_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                "Let's Get Started",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: height * 0.001,
            ),
            const Center(
              child: Text(
                'Create an new account',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            //your email
            const Logintextbtn(
              title: 'Full Name',
              icons: Icons.person,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            //password
            const Logintextbtn(
              title: 'Your Email',
              icons: Icons.email_outlined,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            //Password
            const Logintextbtn(
              title: 'Password',
              icons: Icons.lock,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            //Password Again
            const Logintextbtn(
              title: 'Password Again',
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
