import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_screen.dart';
import 'room_search_screen.dart';
import 'floor_map_screen.dart';
import 'about_screen.dart';
import 'lab_dirctory_screen.dart';
import 'faculty_directory_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Campus Navigation"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();

              if (!context.mounted) return;

              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => const LoginScreen(),
                ),
                    (route) => false,
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/college.png',
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Gokaraju Lailavathi Engineering College",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.meeting_room,
                            color: Colors.blue,
                            size: 35,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "40+",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Rooms"),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.science,
                            color: Colors.green,
                            size: 35,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "10+",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Labs"),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.apartment,
                            color: Colors.orange,
                            size: 35,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "2",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Blocks"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // ROOM SEARCH
            ElevatedButton.icon(
              icon: const Icon(Icons.search),
              label: const Text("Room Search"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const RoomSearchScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 12),

            // LAB DIRECTORY
            ElevatedButton.icon(
              icon: const Icon(Icons.science),
              label: const Text("Laboratories"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LabDirectoryScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 12),

            // FACULTY DIRECTORY
            ElevatedButton.icon(
              icon: const Icon(Icons.person),
              label: const Text("Faculty Directory"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FacultyDirectoryScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 12),

            // FLOOR MAPS
            ElevatedButton.icon(
              icon: const Icon(Icons.map),
              label: const Text("Floor Maps"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FloorMapScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 12),

            // ABOUT PROJECT
            ElevatedButton.icon(
              icon: const Icon(Icons.info),
              label: const Text("About Project"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AboutScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 30),

            const Text(
              "Developed by GLESC",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}