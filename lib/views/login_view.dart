import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travelapp/firebase_options.dart';
import 'package:travelapp/views/register_view.dart';
import 'package:travelapp/views/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: const Text('Login'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(29),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'asset_image/Login.jpg'
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: FutureBuilder(
          future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
          ),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _email,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        hintText: 'Enter your email',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _password,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        hintText: 'Enter your password',
                      ),
                        textAlign: TextAlign.center,
                    ),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute
                        (
                            builder: (context) => RegisterView()
                        )
                      );
                    },
                        child: const Text("Don't have an account? Register",
                          style: TextStyle(color: Colors.white, fontSize: (15.0)),
                        )
                    ),
                    TextButton(onPressed: () async {
                      try {
                        final email = _email.text;
                        final password = _password.text;
                        final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: email,
                            password: password,
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      }
                      on FirebaseAuthException catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(
                                content: Container(
                                    alignment: Alignment.center,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(76.0)),
                                    ),
                                    child: const Text("Invalid Credentials",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),)
                                ),
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                              )
                          );
                        }
                    },
                      child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                    ),
                  ],
                );
              default:
                return const Text('Loading...');
            }
          },
        ),
      ),
    );
  }
}