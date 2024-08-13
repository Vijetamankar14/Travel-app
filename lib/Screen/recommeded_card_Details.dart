import 'package:aspan_travel_app/Widgets/FacilitiesCard.dart';
import 'package:aspan_travel_app/model/recommmend_model.dart';
import 'package:flutter/material.dart';

class RecomeddedCardDetail extends StatelessWidget {
  final RecommendedModel recommendedModel;
  const RecomeddedCardDetail({
    Key? key,
    required this.recommendedModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(13),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.37,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image.asset(
                          recommendedModel.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(bottom: 7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      // alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey.shade700,
                            size: 20,
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recommendedModel.title,
                        style: const TextStyle(
                            fontFamily: "lato",
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "5.3  (355 Review)",
                            style: TextStyle(
                              fontFamily: "lato",
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        recommendedModel.description,
                        style: const TextStyle(
                          fontFamily: "lato",
                          fontSize: 18,
                          wordSpacing: 1.5,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Read more",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "Facilities",
                        style: TextStyle(
                            fontFamily: "lato",
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: const Row(
                          children: [
                            FacilitiesContainer(
                              iconcard: Icons.wifi,
                              Textcard: "1 Heater",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            FacilitiesContainer(
                                iconcard: Icons.local_dining_rounded,
                                Textcard: "Dinner"),
                            SizedBox(
                              width: 15,
                            ),
                            FacilitiesContainer(
                                iconcard: Icons.bathtub_outlined,
                                Textcard: "Tub"),
                            SizedBox(
                              width: 15,
                            ),
                            FacilitiesContainer(
                                iconcard: Icons.pool, Textcard: "Pool")
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                    fontFamily: "lato",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "  999",
                                  style: TextStyle(
                                      fontFamily: "lato",
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  height: 70,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue.shade700,
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Book now  ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 30,
                                      )
                                    ],
                                  ),
                                  ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
