import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/saurabh.jpg'))),
                ),
                title: const Text("Champ"),
                subtitle: const Text("Lucknow"),
                trailing: const Icon(Icons.more_vert),
              ),
              Container(
                height: 550,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/mamma.jpg'))),
              ),
              const ListTile()
            ],
          );
        },
      ),
    );
  }
}
