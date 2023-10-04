import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StoryWidget extends StatelessWidget {
  List<dynamic> story = [
    {"images": 'assets/images/saurabh.jpg', "username": "Champ"},
    {"images": 'assets/images/shivam.jpg', "username": "Shivam"},
    {"images": 'assets/images/ayya.jpg', "username": "Ayya"},
    {"images": 'assets/images/rudr.jpg', "username": "Bhai"},
    {"images": 'assets/images/mamma.jpg', "username": "Mumma"}
  ];

  StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(story.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        padding: const EdgeInsets.all(4.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF982282), Color(0xFFEEa863)],
                          ),
                        ),
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(color: Colors.grey, spreadRadius: 1)
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('${story[index]["images"]}'),
                                  fit: BoxFit.cover,

                                  // You can add this line to make sure the image covers the circle
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('${story[index]["username"]}'),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
