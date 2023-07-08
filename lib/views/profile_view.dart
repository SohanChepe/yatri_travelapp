import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
              SizedBox(height: 20,),
            Container(
              height: 130,
              width: 130,
              child: Image(
                image: NetworkImage('https://bifa.imgix.net/web/2018/10/AR-AF729_HaRDY_GS_20140416175521.jpg?auto=compress%2Cformat&fit=scale&h=1600&ixlib=php-3.3.1&w=1600&wpsize=xl')
              ),
            )
          ],
        ),
      )
    );
  }
}
