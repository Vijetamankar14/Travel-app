// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aspan_travel_app/model/model.dart';
import 'package:aspan_travel_app/model/recommmend_model.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
 
  final DetailCardModel card;

  const Cards({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              card.image,
              height: 250,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade800),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    card.title,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(7, 5, 0, 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade800),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            card.rating,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 95,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendedCards extends StatelessWidget {
  final RecommendedModel recommededcard;

  const RecommendedCards({
    Key? key,
    required this.recommededcard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(23),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(23),
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Image.asset(
                recommededcard.image,
                filterQuality: FilterQuality.high,
                height: 120,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              bottom: 50,
              right: 0,
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade800,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                  recommededcard.rating,
                    style: const TextStyle(color: Colors.white),
                  ))),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  recommededcard.title,
                  style: const TextStyle(
                      fontFamily: "Lato",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.trending_up,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Hot deals")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
