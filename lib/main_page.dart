import 'package:flutter/material.dart';
import 'package:ui_design/next_page.dart';
import 'widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 238, 238),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text.rich(
              TextSpan(
                text: "Find Interested \nEvent to Join",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 10),
            const Text.rich(
              TextSpan(
                text:
                    "We share all events like charity, \nworkshop, blood drive, etc...",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 370,
              width: 300,
              child: Stack(
                children: const [
                  Positioned(
                    top: 40,
                    left: 25,
                    child: PageCards(
                      image: "assets/jacket.JPG",
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 40,
                    child: PageCards(
                      image: "assets/bus.JPG",
                      height: 35,
                      width: 35,
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 120,
                    child: PageCards(
                      image: "assets/bank.JPG",
                      height: 90,
                      width: 90,
                    ),
                  ),
                  Positioned(
                    top: 250,
                    right: 35,
                    child: PageCards(
                      image: "assets/female.JPG",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 35,
                    child: PageCards(
                      image: "assets/group.JPG",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NextPage(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

