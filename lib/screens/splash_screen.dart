import 'dart:async';
import 'package:crypto_app/screens/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage(
                      "lib/assets/images/MyStore-logos (3)/MyStore-logos.jpeg"),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: const [
                    Text(
                      'From',
                      // style: GoogleFonts.montserrat(
                      //     color: Colors.black,
                      //     fontSize: 12,
                      //     fontWeight: FontWeight.normal),
                    ),
                    // const Image(
                    //   image: AssetImage(''),
                    //   height: 100,
                    //    width: 100,
                    //  ),
                    SizedBox(
                      height: 5.0,
                    ),

                    // Text(
                    //   '#',
                    //   style: GoogleFonts.montserrat(
                    //       color: Colors.black,
                    //       fontSize: 15,
                    //       fontWeight: FontWeight.normal),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
