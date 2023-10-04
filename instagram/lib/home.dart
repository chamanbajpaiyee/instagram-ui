import 'package:flutter/material.dart';
import 'package:instagram/widget/bottombar_widget.dart';
import 'package:instagram/widget/post_widget.dart';
import 'package:instagram/widget/story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xE3FFFFFF),
        title: const Text(
          'Instagram',
          style:
              TextStyle(fontFamily: 'Billa', color: Colors.black, fontSize: 40),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/huu.jpg',
              width: 200,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          StoryWidget(),
          const Divider(color: Colors.grey),
          const Expanded(
            child: PostWidget(),
          ),
        ],
      ),
      bottomNavigationBar: const BottombarWidget(),
    );
  }
}
