import 'package:flutter/material.dart';
import 'package:task3/feature/home/widget/bottom_nav.dart';
import 'package:task3/feature/home/widget/chat_bar.dart';
import 'package:task3/feature/home/widget/chat_list.dart';
import 'package:task3/feature/home/widget/floating_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'واتساب',
            style: TextStyle(
                color: Colors.greenAccent, fontWeight: FontWeight.bold),
          ),
          actions: [
            const Icon(
              Icons.photo_camera_outlined,
              color: Colors.white,
            ),
            const SizedBox(
              width: 24,
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
        ),
        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              const Divider(
                thickness: 2,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ChatBar(p: p[0]));
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: const FloatingButton(),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}
