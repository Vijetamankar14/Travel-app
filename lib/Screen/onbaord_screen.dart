import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/screen1.png"), fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 67, vertical: 93),
                child: Image.asset(
                  "images/Aspen.png",
                ),
              ),
              const SizedBox(
                height: 250,
                width: 32,
              ),
              Container(
                width: 300,
                height: 135,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Plan Your",
                      style: TextStyle(
                          fontFamily: "Lato",
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Luxzurious Vacation",
                      style: TextStyle(
                          fontFamily: "Lato",
                          color: Colors.white,
                          fontSize: 42,
                          wordSpacing: 2.0),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff176FF2),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(16)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/second");
                },
                child: const Text("Explore"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
