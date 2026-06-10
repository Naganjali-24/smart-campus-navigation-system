import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Project"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Center(
                  child: Icon(
                    Icons.location_city,
                    size: 80,
                    color: Colors.blue,
                  ),
                ),

                const SizedBox(height: 15),

                const Center(
                  child: Text(
                    "SMART CAMPUS NAVIGATION SYSTEM",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Project Overview",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Smart Campus Navigation System is a mobile application developed to help students, faculty members and visitors easily locate classrooms, laboratories, offices and campus facilities. The application simplifies navigation inside the college campus through room search, floor maps and Google Maps integration.",
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Key Features",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text("• Room Search"),
                const Text("• Laboratory Directory"),
                const Text("• Floor Maps"),
                const Text("• Campus Map"),
                const Text("• Google Maps Integration"),
                const Text("• Building Information"),

                const SizedBox(height: 20),

                const Text(
                  "Technology Used",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text("• Flutter"),
                const Text("• Dart"),
                const Text("• Google Maps API"),
                const Text("• Android Studio"),

                const SizedBox(height: 20),

                const Text(
                  "Future Scope",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text("• Indoor Navigation"),
                const Text("• QR Based Navigation"),
                const Text("• Voice Navigation"),
                const Text("• AR Navigation"),
                const Text("• Real-Time Location Tracking"),

                const SizedBox(height: 20),

                const Text(
                  "Benefits",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "• Helps new students locate rooms quickly",
                ),
                const Text(
                  "• Saves time during navigation",
                ),
                const Text(
                  "• Improves visitor experience",
                ),
                const Text(
                  "• Centralized campus information",
                ),

                const SizedBox(height: 30),

                const Divider(),

                const SizedBox(height: 10),

                const Center(
                  child: Text(
                    "Developed by GLEC",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                const Center(
                  child: Text(
                    "B.Tech Mini Project 2026",
                    style: TextStyle(
                      color: Colors.grey,
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