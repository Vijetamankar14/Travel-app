// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aspan_travel_app/Screen/popular_card_detail.dart';
import 'package:aspan_travel_app/Screen/recommeded_card_Details.dart';
import 'package:aspan_travel_app/Widgets/cards.dart';
import 'package:aspan_travel_app/data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  void onTapNavigationBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    List<String> scrollBaritem = [
      "Location",
      "Hotels",
      "Food",
      "Adventure",
      "Resorts"
    ];

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTapNavigationBar,
            currentIndex: currentIndex,
            selectedItemColor: Colors.blueAccent,
            elevation: 0,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedItemColor: Colors.grey.shade700,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplane_ticket,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_sharp,
                  ),
                  label: "Home"),
            ]),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Aspen",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_rounded,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        DropdownMenu(
                          hintText: 'India',
                          inputDecorationTheme: const InputDecorationTheme(
                            contentPadding: EdgeInsets.all(0),
                            border: InputBorder.none,
                          ),
                          dropdownMenuEntries: const [
                            DropdownMenuEntry(value: 0, label: 'India'),
                            DropdownMenuEntry(value: 1, label: 'Srilanka'),
                            DropdownMenuEntry(value: 2, label: 'Dubai'),
                            DropdownMenuEntry(value: 3, label: 'America')
                          ],
                          onSelected: (value) => print(value),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.blue.shade50,
                ),
                margin: const EdgeInsets.fromLTRB(17, 7, 17, 7),
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Icon(Icons.search),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          onChanged: (value) {
                            print(searchController.text);
                          },
                          decoration: const InputDecoration(
                              hintText: "Find things to do",
                              border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: scrollBaritem.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            isSelected = index;
                          });

                          print("$index == $isSelected");
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              color: isSelected == index
                                  ? Colors.blue.shade50
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            scrollBaritem[index],
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                      );
                    }),
              ),

              //------------------------------------Popular Container
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Text(
                        "Popular",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          // Navigator.pushNamed(context, "/third");
                          print('see all tapper');
                        },
                        child: const Text("See all"))
                  ],
                ),
              ),
              //---------------------------------------Cards Places
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                height: 250,
                width: 500,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: fakeData.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print('kuch bhi');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PopularCardDetail(
                              card: fakeData[index],
                            ),
                          ),
                        );
                      },
                      child: Cards(
                        card: fakeData[index],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // ------------------------------------Recommended Container
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  "Recommended",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              // ---------------------------------------------Hotels Card

              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 200,
                  width: 600,
                  child: ListView.builder(
                      itemCount: recomeddedData.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecomeddedCardDetail(
                                  recommendedModel: recomeddedData[index],
                                ),
                              ),
                            );
                          },
                          child: RecommendedCards(
                            recommededcard: recomeddedData[index],
                          ),
                        );
                      })),

              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 200,
                  width: 600,
                  child: ListView.builder(
                      itemCount: recomeddedData.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecomeddedCardDetail(
                                  recommendedModel: recomeddedData[index],
                                ),
                              ),
                            );
                          },
                          child: RecommendedCards(
                            recommededcard: recomeddedData[index],
                          ),
                        );
                      },),),
            ],
          ),

          // -----------------------------------------------navigation bar
        ),
      ),
    );
  }
}
