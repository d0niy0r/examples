import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTask1 extends StatefulWidget {
  const HomeTask1({super.key});

  @override
  State<HomeTask1> createState() => _HomeTask1State();
}

class _HomeTask1State extends State<HomeTask1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemYellow,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 350,
                decoration: const BoxDecoration(
                  color: CupertinoColors.systemYellow,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 160),
                    bottomRight: Radius.elliptical(200, 160),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: const ListTile(
                  leading: Icon(Icons.menu, size: 30, color: Colors.black),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.search_sharp, size: 30, color: Colors.black),
                      SizedBox(width: 10),
                      Icon(Icons.add_circle_outline,
                          size: 30, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 75,
              left: 50,
              width: 300,
              height: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(50.0), // Set border radius
                ),
                elevation: 10,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Name Surname",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Graphic designer",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Bio: ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors
                                    .black, // Opsiyonel, metnin rengini belirler
                              ),
                            ),
                            TextSpan(
                              text:
                                  "Hi, I'm [Your Name], a graphic designer who believes that design is not just about creating beautiful visuals, but also about solving problems.",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                        // Change the button background color here
                        // onPrimary: Colors.white, // Change the text color here
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // Change the border radius here
                        ),
                      ),
                      onPressed: () {
                        // Button action goes here
                      },
                      child: const Text('Contact'),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 50,
              width: 300,
              height: 250,
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(50.0), // Set border radius
                    // side: BorderSide(color: Colors.black, width: 1.0), // Set border side properties
                  ),
                  elevation: 10,
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Portfolio",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 24,
                              color: CupertinoColors.systemYellow,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.black12,
                            radius: 30,
                          ),
                          title: Text(
                            "Branding for beaty salon",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.black12,
                            radius: 30,
                          ),
                          title: Text(
                            "Branding for beaty salon",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 32,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 24,
            ),
            Icon(
              Icons.access_time_outlined,
              color: Colors.white,
              size: 24,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
