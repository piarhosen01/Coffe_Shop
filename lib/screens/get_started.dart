import 'package:coffee_shop/constant/image_string.dart';
import 'package:coffee_shop/constant/text_string.dart';
import 'package:coffee_shop/screens/home.dart';
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
                  title1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title3,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  subtitle1,
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
                Text(
                  subtitle2,
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Home_Screen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFC67C4E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
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
    );
  }
}
