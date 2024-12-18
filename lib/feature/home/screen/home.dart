import 'package:flutter/material.dart';
import 'package:task3/feature/home/widget/app_bar.dart';
import 'package:task3/feature/home/widget/bottom_nav.dart';
import 'package:task3/feature/home/widget/chat_bar.dart';
import 'package:task3/feature/home/widget/chat_list.dart';
import 'package:task3/feature/home/widget/floating_btn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isArabic = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: bar(
          btn: null,
          press: () {
            setState(() {
              isArabic = !isArabic;
            });
          },
          txt: const Text(
            'واتساب',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          ),
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
