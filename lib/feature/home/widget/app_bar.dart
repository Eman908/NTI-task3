import 'package:flutter/material.dart';

AppBar bar(
    {required void Function()? press,
    required Widget? txt,
    required Widget? btn}) {
  return AppBar(
    leading: btn,
    backgroundColor: Colors.black87,
    title: txt,
    actions: [
      IconButton(
        onPressed: press,
        icon: const Icon(
          Icons.language,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      const Icon(
        Icons.photo_camera_outlined,
        color: Colors.white,
      ),
      const SizedBox(
        width: 16,
      ),
      const Icon(
        Icons.search,
        color: Colors.white,
      ),
      PopupMenuButton(
        iconColor: Colors.white,
        itemBuilder: (context) {
          return [
            const PopupMenuItem(
              child: Text('مجموعة جديدة'),
            ),
            const PopupMenuItem(
              child: Text('اضافة جهة اتصال'),
            ),
          ];
        },
      )
    ],
  );
}
