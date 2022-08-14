import 'package:flutter/material.dart';
import 'main_page.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        // foregroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.open_with_outlined),
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 248, 238, 238),
      body: Column(
        children: [
          Container(
            height: 350,
            color: Colors.orange,
            child: Stack(
              children: [
                Positioned(
                  top: 60,
                  right: 20,
                  child: SizedBox(
                    height: 310,
                    child: Image.asset('assets/guy.JPG'),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text.rich(
                        TextSpan(
                          text: "08\nJune",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text.rich(
                        TextSpan(
                          text: "Surakarta\nClean City\nTogether",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_pin,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 3),
                          Text(
                            "Surakarta, INA",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/female.JPG'),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/jacket.JPG'),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.black,
                      child: Text(
                        "40",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "George & 40 friends joined this event",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text:
                              "Hi Surakartans! We wait you to join with us.\nWe need you to save our city, to stay clean &\nbeautiful. Let's join Surakartans! "),
                      TextSpan(
                        text: "Details",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Image(
                  image: AssetImage("assets/map.JPG"),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black38,
                          width: 2,
                        ),
                      ),
                      child: const Icon(
                        Icons.bookmark_outline,
                        color: Colors.black38,
                      ),
                    ),
                    ElevatedButton(
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
                            builder: (context) => const MyHomePage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: 45,
                            width: 220,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Join Now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
