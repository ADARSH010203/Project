import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Gym%20Workouts/Aerobic.dart';
import 'package:flutter_application_1/Gym%20Workouts/GYM.dart';
import 'package:flutter_application_1/Gym%20Workouts/Stretching.dart';
import 'package:flutter_application_1/Gym%20Workouts/balance.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:flutter_application_1/Home/pageTransition.dart';

class Exercise extends StatelessWidget {
  const Exercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Text(

              "Exercise",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
 

          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ExerciseCategory(
            image: 'assets/gym.jpeg',
            label: 'Gym Workouts',
            onTap: () {
              Navigator.of(context).push(
                PageTransition(page:gymwork(),beginOffset: Offset(-1.0,-1.0),endOffset: Offset.zero),
              );
            },
          ),
          ExerciseCategory(
            image: 'assets/aerobics.jpg',
            label: 'Aerobic',
            
            onTap: () {              
              Navigator.of(context).push(
                PageTransition(page: Aerobic(), beginOffset: Offset(-1.0,-1.0),endOffset: Offset.zero),
              );
            },
          ),
          ExerciseCategory(
            image: 'assets/Strength.jpeg',
            label: 'Balance',
            onTap: () {
              Navigator.of(context).push(
                PageTransition(page:  Balance(),beginOffset: Offset(-1.0,-1.0),endOffset: Offset.zero),
              );
            },
          ),
          ExerciseCategory(
            image: 'assets/nature.webp',
            label: 'Strength Training',
            onTap: () {
              Navigator.of(context).push(
                PageTransition(page:Stretching(),beginOffset: Offset(-1.0,-1.0),endOffset: Offset.zero),
              );
            },
          ),
          ExerciseCategory(
            image: 'assets/adaa.jpeg',
            label: 'Stretching',
            onTap: () {
              // Handle Stretching tap
               Navigator.of(context).push(
                PageTransition(page:Stretching(),beginOffset: Offset(-1.0,-1.0),endOffset: Offset.zero),);
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Footer(),
        color: const Color.fromARGB(255, 88, 185, 209),
      ),
    );
  }
}

class ExerciseCategory extends StatelessWidget {
  final String image;
  final String label;
  final VoidCallback onTap;

  const ExerciseCategory({
    required this.image,
    required this.label,
    required this.onTap, // Corrected this to be a required named parameter
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150, // Adjust the height as needed
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
