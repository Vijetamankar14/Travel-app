import 'package:aspan_travel_app/Screen/home_screen.dart';
import 'package:aspan_travel_app/Screen/onbaord_screen.dart';
import 'package:aspan_travel_app/Screen/popular_card_detail.dart';
import 'package:aspan_travel_app/Screen/recommeded_card_Details.dart';
import 'package:aspan_travel_app/data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const TravelApp(),
  );
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const OnboardScreen(),
        '/second': (context) => const HomeScreen(),
        '/third': (context) => PopularCardDetail(card: fakeData[0]),
        '/fourth': (context) =>
            RecomeddedCardDetail(recommendedModel: recomeddedData[0]),
      },
    );
  }
}
