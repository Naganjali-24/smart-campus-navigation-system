import 'package:flutter/material.dart';

class FacultyDetailsScreen extends StatelessWidget {
  final String name;
  final String room;

  const FacultyDetailsScreen({
    super.key,
    required this.name,
    required this.room,
  });

  String getBlock(String room) {

    if (room == '2031') {
      return 'Block 2';
    }

    String digits = room.replaceAll(RegExp(r'[^0-9]'), '');

    if (digits.isEmpty) {
      return 'Special Area';
    }

    int? roomNumber = int.tryParse(digits);

    if (roomNumber == null) {
      return 'Special Area';
    }

    if (roomNumber < 2000) {
      return 'Block 1';
    }

    return 'Block 2';
  }

  String getFloor(String room) {

    if (room == '2031') {
      return 'Second Floor';
    }

    String digits = room.replaceAll(RegExp(r'[^0-9]'), '');

    if (digits.length < 2) {
      return 'Unknown';
    }

    String floorDigit = digits[1];

    switch (floorDigit) {
      case '0':
        return 'Ground Floor';
      case '1':
        return 'First Floor';
      case '2':
        return 'Second Floor';
      case '3':
        return 'Third Floor';
      case '4':
        return 'Fourth Floor';
      default:
        return 'Unknown';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faculty Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.blue,
                ),

                const SizedBox(height: 20),

                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                ListTile(
                  leading: const Icon(Icons.room),
                  title: Text('Room No: $room'),
                ),

                ListTile(
                  leading: const Icon(Icons.apartment),
                  title: Text(getBlock(room)),
                ),

                ListTile(
                  leading: const Icon(Icons.layers),
                  title: Text(getFloor(room)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}