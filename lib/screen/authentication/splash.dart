import 'package:e_com_app/screen/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
        // appBar: AppBar(),
        body: Container(
      color: Colors.blueAccent,
      height: height, //half of the height size
      width: width,
      child: SvgPicture.asset(
        'assets/images/single icon White.svg',
        fit: BoxFit.contain,
      ),
    ));
  }
}
