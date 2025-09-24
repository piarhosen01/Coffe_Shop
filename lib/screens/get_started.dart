import 'package:coffee_shop/constant/image_string.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            getStartedImage,
            fit: BoxFit.cover,
            height: screenHeight * 0.6,
            width: double.infinity,
          ),
          Positioned(
            bottom: -150,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Fall in love with',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Coffee in Blissful',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Delight',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome to our cozy coffee corner, where',
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
                Text(
                  'every cup is a delightful for you',
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: FloatingActionButton(
            onPressed: () {
              // Navigate to next screen
            },
            backgroundColor: const Color(0xFFC67C4E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
