import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 0,
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/map_background.png",
              fit: BoxFit.fill,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.center,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Find',
                        // prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                bottom: 20,
                                right: 7.5,
                              ),
                              padding: const EdgeInsets.all(16.0),
                              height: 162,
                              decoration: BoxDecoration(
                                color: const Color(
                                  0xFFFF8E65,
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: const Text(
                                "Find blood",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                bottom: 20,
                                left: 7.5,
                              ),
                              padding: const EdgeInsets.all(16.0),
                              height: 162,
                              decoration: BoxDecoration(
                                color: const Color(
                                  0xFFFFF292,
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: const Text(
                                "Find donor",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 24,
                                    color: Color(
                                      0xFFBFBFBF,
                                    ),
                                  ),
                                  Text(
                                    "Find",
                                    style: TextStyle(
                                      color: Color(
                                        0xFFBFBFBF,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.home,
                                    size: 24,
                                    color: Color(
                                      0xFFBFBFBF,
                                    ),
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                      color: Color(
                                        0xFFBFBFBF,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.handshake,
                                    size: 24,
                                    color: Color(
                                      0xFFBFBFBF,
                                    ),
                                  ),
                                  Text(
                                    "Menu",
                                    style: TextStyle(
                                      color: Color(
                                        0xFFBFBFBF,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.menu,
                                    size: 24,
                                    color: Color(
                                      0xFFBFBFBF,
                                    ),
                                  ),
                                  Text(
                                    "Menu",
                                    style: TextStyle(
                                      color: Color(
                                        0xFFBFBFBF,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
