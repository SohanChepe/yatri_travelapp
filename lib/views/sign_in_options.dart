import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:travelapp/views/login_view.dart';

class SignInOptions extends StatefulWidget {
  const SignInOptions({Key? key}) : super(key: key);

  @override
  State<SignInOptions> createState() => _SignInOptionsState();
}


class _SignInOptionsState extends State<SignInOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(29),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'asset_image/background.jpg'
            ),
            fit: BoxFit.fill,
          ),
        ),
        child:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 400,
                  child: TextButton(onPressed: () {
                    Navigator.push
                      (
                      context, MaterialPageRoute(
                        builder: (context) => const LoginView()),
                    );
                  },
                    style:
                    TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50)
                    ),
                    child: const Text(
                      "Login", style: TextStyle(fontSize: (18.0)),),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Or Login with options below",
                  style: TextStyle(fontSize: 14.0),),
                const Dash(
                  direction: Axis.horizontal,
                  length: 350,
                  dashLength: 350,
                  dashColor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
              ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const SignInOptions())
                  );
                },
                    style:
                      TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50)
                    ),
                    child: const Text('Login With Google')
                ),
                const SizedBox(
                  height: 15,
                  width: 1,
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const SignInOptions())
                  );
                },
                    style:
                    TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50)
                    ),
                    child: const Text('Login With Facebook')
                ),
                const SizedBox(
                  height: 15,
                  width: 1,
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const SignInOptions())
                  );
                },
                    style:
                    TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50)
                    ),
                    child: const Text('Login With Twitter')
                ),
            ],
          ),
        ),
      ),
    );
  }
}