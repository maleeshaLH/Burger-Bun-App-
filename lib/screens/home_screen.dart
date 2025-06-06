import 'package:flutter/material.dart';
import 'package:burger_bun_app/widgets/Main.dart'; // Ensure MainNavPage exists

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/homeburger.png'), // Background image
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black54,
              BlendMode.darken,
            ),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Top logo and title
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      const Text(
                        "Burger",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       const Text(
                        "King",
                        style: TextStyle(
                          color: Color.fromARGB(179, 13, 226, 13),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        'assets/fajita.png', // Your logo image
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              // Headline
              const Text(
                'LOVE EVERY BITE',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              const Text(
                'We serve incomparable delicacies',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 32),

              // Get Started button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainNavPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Sign Up prompt
              const Text(
                "Don't have an account? Sign Up",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
