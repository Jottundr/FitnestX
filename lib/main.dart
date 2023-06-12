import 'package:flutter/material.dart';
import 'package:untitled/onboarding_1.dart';

void main() {
  runApp(const FitnestX());
}

class FitnestX extends StatelessWidget {
  const FitnestX({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Fitnest',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: 'X',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Color(0xFFC58BF2),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Everybody Can Train',
                  style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: Color(0xFF7B6F72),
              ),
                  ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: double.maxFinite,
          height: 60,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF9DCEFF),
                Color(0xFF92A3FD),
              ],
            ),
            borderRadius: BorderRadius.circular(99),
          ),
          child: FloatingActionButton.extended(
            label: const Text(
              'Get Started',
              style: TextStyle(
                  fontFamily: 'Poppins-bold',
                  fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(
                context,
                  MaterialPageRoute(
                    builder: (context) => const OnBoarding1()));
            },
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
