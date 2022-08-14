import 'package:flutter/material.dart';
import 'widgets.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 238, 238),
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 248, 238, 238),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.deepOrange,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "",
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 20,
                  right: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Current location",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_pin,
                                  color: Colors.red,
                                  size: 15,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "Surakarta, INA",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 200),
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/female.JPG"),
                          radius: 15,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,
                      ),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white70),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white70),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                          labelText: "Search for event",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 310,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      LargeCards(
                        boxColor: Colors.orange,
                        date: "08 \nJune",
                        text: "43 Joined",
                        text2: "40",
                      ),
                      SizedBox(width: 10),
                      LargeCards(
                        boxColor: Color.fromARGB(255, 70, 69, 69),
                        date: "24 \nMay",
                        text: "104 Joined",
                        text2: "84",
                      ),
                      SizedBox(width: 10),
                      LargeCards(
                        boxColor: Color.fromARGB(255, 111, 158, 180),
                        date: "17 \nApril",
                        text: "175 Joined",
                        text2: "65",
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Events for you",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                  SizedBox(width: 140),
                  Text(
                    "View more",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: Column(
                  children: const [
                    RowCards(
                      text1: "Jun",
                      text2: "12",
                      text3: "Volunteer Solosup",
                      text4: "09:00 AM to 03:00 PM\nSurakarta, INA",
                    ),
                    SizedBox(height: 10),
                    RowCards(
                      text1: "May",
                      text2: "24",
                      text3: "Volunteer Foodsup",
                      text4: "09:00 AM to 05:00 PM\nSurakarta, INA",
                    ),
                    SizedBox(height: 10),
                    RowCards(
                      text1: "Apr",
                      text2: "17",
                      text3: "Volunteer Clothing",
                      text4: "09:00 AM to 05:00 PM\nSurakarta, INA",
                    ),
                    SizedBox(height: 10),
                    RowCards(
                      text1: "Mar",
                      text2: "08",
                      text3: "Volunteer Snackup",
                      text4: "09:00 AM to 01:00 PM\nSurakarta, INA",
                    ),
                    SizedBox(height: 10),
                    RowCards(
                      text1: "Feb",
                      text2: "27",
                      text3: "Volunteer Drinksup",
                      text4: "09:00 AM to 02:00 PM\nSurakarta, INA",
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Copyright, ©2022. Obainho Designs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
