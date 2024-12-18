import 'package:flutter/material.dart';
import 'package:task3/feature/story/screen/story_screen.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.greenAccent,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const StoryScreen();
        }));
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
