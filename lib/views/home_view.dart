import 'package:flutter/material.dart';
import 'package:travelapp/Categories/Spiritual.dart';
import 'package:travelapp/Categories/Historical.dart';
import 'package:travelapp/Categories/Clubs.dart';
import 'package:travelapp/Categories/Treks.dart';
import 'package:travelapp/Categories/Cuisine.dart';
import 'package:travelapp/views/logout_view.dart';
import 'package:travelapp/views/profile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'One';
  String dropdownValue2 = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title:
          DropdownButton<String>(
          value: dropdownValue2,
          icon: const Icon(Icons.menu),
          style: const TextStyle(color: Colors.grey),
          onChanged: (String? newValue) {
            if (newValue != dropdownValue2) {
              switch (newValue){
                case 'One':
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  break;
                case 'Two':
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                  break;
                case 'Three':
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Logout()));
                  break;
              }
            }
          setState(() {
          dropdownValue2 = newValue!;
            });
          },
          items: const [
            DropdownMenuItem<String>(
                value: 'One',
                child: Text('Home')
            ),
            DropdownMenuItem<String>(
              value: 'Two',
              child: Text('Profile')
            ),
            DropdownMenuItem<String>(
                value: 'Three',
                child: Text('Logout')
            )
          ],
          ),
      ),
      body:
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(29),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'asset_image/Home_BG.jpg'
              ),
              fit: BoxFit.fill,
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
        ),
    );
  }
}
