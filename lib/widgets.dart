import 'package:flutter/material.dart';
import 'final_page.dart';

class PageCards extends StatelessWidget {
  final String image;
  final double height;
  final double width;

  const PageCards({
    Key? key,
    required this.image,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 100, 100, 100),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
        ),
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
    );
  }
}

class RowCards extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  const RowCards({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  }) : super(key: key);

  @override
  State<RowCards> createState() => _RowCardsState();
}

class _RowCardsState extends State<RowCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const SizedBox(width: 5),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: widget.text1,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),
                  TextSpan(
                    text: "\n${widget.text2}",
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: widget.text3,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                  text: "\n${widget.text4}",
                  style: const TextStyle(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FinalPage(),
                ),
              );
            },
            color: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text("Join"),
          ),
        ],
      ),
    );
  }
}

class LargeCards extends StatelessWidget {
  final Color boxColor;
  final String date;
  final String text;
  final String text2;

  const LargeCards({
    Key? key,
    required this.boxColor,
    required this.date,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 270,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              height: 230,
              width: 230,
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    right: 10,
                    child: SizedBox(
                      height: 220,
                      child: Image.asset('assets/guy.JPG'),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: date,
                            style: const TextStyle(
                              fontSize: 15,
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
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_pin,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 3),
                            Text(
                              "Surakarta, INA",
                              style: TextStyle(
                                fontSize: 12,
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
            Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 50),
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/female.JPG'),
                ),
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/jacket.JPG'),
                ),
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/guy.JPG'),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.black,
                  child: Text(
                    text2,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
