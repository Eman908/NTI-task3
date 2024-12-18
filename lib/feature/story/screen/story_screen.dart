import 'package:flutter/material.dart';
import 'package:task3/feature/home/screen/home.dart';
import 'package:task3/feature/home/widget/app_bar.dart';
import 'package:task3/feature/home/widget/bottom_nav.dart';
import 'package:task3/feature/home/widget/floating_btn.dart';
import 'package:task3/feature/story/widgets/channel_bar.dart';
import 'package:task3/feature/story/widgets/channel_list.dart';
import 'package:task3/feature/story/widgets/story_card.dart';
import 'package:task3/feature/home/widget/text_style.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  bool isArabic = true;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: bar(
          btn: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }));
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          press: () {
            setState(() {
              isArabic = !isArabic;
            });
          },
          txt: const Text(
            'المستجدات',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          color: Colors.black87,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'الحالة',
                style: style(fWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryCard(),
                    SizedBox(
                      width: 24,
                    ),
                    StoryCard(),
                    SizedBox(
                      width: 24,
                    ),
                    StoryCard(),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    'القنوات',
                    style: style(fWeight: FontWeight.w800),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      'استكشاف',
                      style: style(fWeight: FontWeight.w800),
                    ),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ChannelBar(c: c[0]));
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
