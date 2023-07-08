import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Categories/Spiritual.dart';
import 'package:travelapp/Categories/Historical.dart';
import 'package:travelapp/Categories/Clubs.dart';
import 'package:travelapp/Categories/Treks.dart';
import 'package:travelapp/Categories/Cuisine.dart';
import 'package:url_launcher/url_launcher.dart';

class ISKCONN extends StatelessWidget {
  const ISKCONN({Key? key}) : super(key: key);

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
                  RichText(
                      text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'ISKCON Temple, Pune',
                                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)
                              ),
                              const TextSpan(
                               text: '\nISKCON New Vedic Cultural Center (NVCC), Sri Sri Radha Vrindavanchandra temple or ISKCON Pune is a Gaudiya Vaishnavism temple situated in Pune, India. The temple is dedicated to Hindu god Radha Krishna and was opened in 2013. It is the largest temple in the city of Pune.The temple complex has two temples- the main Radha Krishna temple and the Venkateswara (Balaji) temple. The Radhakrishna temple is built in North Indian architecture style using red stone and marble while the Venkateswara temple is built in South Indian architecture style (Similar to Balaji temple in Tirumala) using Kota stone.',
                                style: TextStyle(fontSize: 18.0)
                              ),
                              const TextSpan(
                                text: '\nVisit Google Maps',
                                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400)
                              ),
                              TextSpan(
                                text: '\nClick Here to see route',
                                style: const TextStyle(fontSize: 18.0, color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                  final uri = Uri.parse("https://www.google.com");
                                  if(await canLaunchUrl(uri)){
                                    await launchUrl(uri);
                                  }
                                }
                              )
                          ]
                        )
                    )
                ],
              ),
            )
          ]
        )
      )
    );
  }
}
