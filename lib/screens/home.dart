import 'package:coffee_shop/constant/image_string.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight,
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: screenHeight * 0.33,
                  width: double.infinity,
                  color: Colors.black87,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Location",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Text(
                            "New York, USA",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search coffee...',
                                hintStyle: TextStyle(color: Colors.white54),
                                prefixIcon: Icon(Icons.search, color: Colors.white54),
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(Icons.filter_list, color: Colors.white54),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.33 - 76,
                  left: 24,
                  right: 24,
                  child: Container(
                    height: 152,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 12,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                        banner1,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
