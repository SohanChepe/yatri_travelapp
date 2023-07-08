import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Categories/Spiritual.dart';
import 'package:travelapp/Categories/Historical.dart';
import 'package:travelapp/Categories/Clubs.dart';
import 'package:travelapp/Categories/Treks.dart';
import 'package:travelapp/Categories/Cuisine.dart';
import 'package:url_launcher/url_launcher.dart';
class Dagdusheth extends StatelessWidget {
  const Dagdusheth({Key? key}) : super(key: key);

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
                                      text: 'Shreemant Dagdusheth Halwai Ganapati, Pune',
                                      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)
                                  ),
                                  const TextSpan(
                                      text: '\nThe Dagadusheth Halwai Ganapati temple is a Hindu Temple located in Pune and is dedicated to the Hindu god Ganesh. The temple is visited by over hundred thousand pilgrims every year.Devotees of the temple include celebrities and chief ministers of Maharashtra who visit during the annual ten-day Ganeshotsav festival'
                                      'Shrimant Dagadusheth Halwai and his wife Laxmibai was a trader and sweet maker settled in Pune. His original halwai shop still exists under the name "Dagdusheth Halwai Sweets" near Datta Mandir in Pune. Eventually he became a successful sweet seller and a rich businessman. In the later 1800s, they lost their only son in a plague epidemic. They were approached by a compassionate sage who advised them to build a Ganesha temple in Pune.',
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
