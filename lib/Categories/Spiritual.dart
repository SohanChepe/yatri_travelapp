import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Categories/Historical.dart';
import 'package:travelapp/Categories/Clubs.dart';
import 'package:travelapp/Categories/Treks.dart';
import 'package:travelapp/Categories/Cuisine.dart';
import 'package:travelapp/Spiritual/Dagdusheth.dart';
import 'package:travelapp/Spiritual/ISKCONN.dart';

class Spiritual extends StatefulWidget {
  const Spiritual({Key? key}) : super(key: key);

  @override
  State<Spiritual> createState() => _SpiritualState();
}

class _SpiritualState extends State<Spiritual> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body:
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(29),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'asset_image/Spiritual_BG.jpg'
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      RichText(text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'ISKCON Temple, Pune',
                            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),

                          const TextSpan(
                            text: '\nISKCON New Vedic Cultural Center (NVCC), Sri Sri Radha Vrindavanchandra temple or ISKCON Pune is a Gaudiya Vaishnavism temple situated in Pune, India.',
                            style: TextStyle(fontSize: 18.0)
                          ),

                          TextSpan(
                            text: '\nread more...',
                            style: const TextStyle(color: Colors.blue, fontSize: 18.0),
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => ISKCONN()));
                            }
                          ),
                          const TextSpan(
                            text: '\nShreemant Dagdusheth Halwai Ganapati, Pune',
                            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),

                          const TextSpan(
                              text: '\nThe Dagadusheth Halwai Ganapati temple is a Hindu Temple located in Pune and is dedicated to the Hindu god Ganesh. The temple is visited by over hundred thousand pilgrims every year.',
                              style: TextStyle(fontSize: 18.0)
                          ),

                          TextSpan(
                              text: '\nread more...',
                              style: const TextStyle(color: Colors.blue, fontSize: 18.0),
                              recognizer: TapGestureRecognizer()
                                ..onTap = (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Dagdusheth()));
                                }
                          ),

                        ]
                      ))
                    ],
                  ),
                ),

            ],
          ),
        ),
    );
  }
}
