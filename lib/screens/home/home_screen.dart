import 'package:flutter/material.dart';

import '../../widgets/home/bottom_nav_bar.dart';
import '../../widgets/home/category_grid.dart';
import '../../widgets/home/continue_learning.dart';
import '../../widgets/home/daily_streak_card.dart';
import '../../widgets/home/greeting_card.dart';
import '../../widgets/home/progress_card.dart';
import '../../widgets/home/search_bar_widget.dart';
import '../../widgets/home/xp_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F7FB),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [

              GreetingCard(),

              SizedBox(height: 20),

              DailyStreakCard(),

              SizedBox(height: 15),

              XPCard(),

              SizedBox(height: 20),

              SearchBarWidget(),

              SizedBox(height: 25),

              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              CategoryGrid(),

              SizedBox(height: 25),

              ContinueLearning(),

              SizedBox(height: 30),

            ],
          ),
        ),
      ),

      bottomNavigationBar: const BottomNavBar(),
    );
  }
}