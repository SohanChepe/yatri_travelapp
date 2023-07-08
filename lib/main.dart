import 'package:flutter/material.dart';
import 'package:travelapp/views/sign_in_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Project',
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true
      ),
    home: const SignInOptions(),
    ),
  );
}