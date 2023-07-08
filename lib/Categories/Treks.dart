import 'package:flutter/material.dart';
import 'package:travelapp/Categories/Spiritual.dart';
import 'package:travelapp/Categories/Historical.dart';
import 'package:travelapp/Categories/Clubs.dart';
import 'package:travelapp/Categories/Treks.dart';
import 'package:travelapp/Categories/Cuisine.dart';

class Trek extends StatefulWidget {
  const Trek({Key? key}) : super(key: key);

  @override
  State<Trek> createState() => _TrekState();
}

class _TrekState extends State<Trek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(29),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'asset_image/Trek_Bg.jpg'
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Spiritual()));
                },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white54
                    ),
                    child: const Text('Spiritual', style: TextStyle(color: Colors.black, fontSize: (18.0)),)),
                const SizedBox(
                  width: 10,
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Historical()));
                },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white54
                    ),
                    child: const Text('Historical', style: TextStyle(color: Colors.black, fontSize: (18.0)),)),
                const SizedBox(
                  width: 10,
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Cuisine()));
                },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white54
                    ),
                    child: const Text('Restaurants and Cafes', style: TextStyle(color: Colors.black, fontSize: (18.0)),)),
                const SizedBox(
                  width: 10,
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Clubs()));
                },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white54
                    ),
                    child: const Text('Clubs and Parties', style: TextStyle(color: Colors.black, fontSize: (18.0)),)),
                const SizedBox(
                  width: 10,
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Trek()));
                },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white54
                    ),
                    child: const Text('Treks', style: TextStyle(color: Colors.black, fontSize: (18.0)),)),
              ],
            ),
          ),
        )
    );
  }
}
