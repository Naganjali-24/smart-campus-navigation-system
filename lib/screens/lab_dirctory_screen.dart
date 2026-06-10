import 'package:flutter/material.dart';

class LabDirectoryScreen extends StatelessWidget {
  const LabDirectoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final labs = [
      {
        "name": "BE Lab",
        "room": "1308",
        "block": "Block 1",
        "floor": "Third Floor",
        "image": "assets/labs/be.png",
      },
      {
        "name": "BEE Lab",
        "room": "2001",
        "block": "Block 2",
        "floor": "Ground Floor",
        "image": "assets/labs/bee.png",
      },
      {
        "name": "Chemistry Lab",
        "room": "1103",
        "block": "Block 1",
        "floor": "First Floor",
        "image": "assets/labs/chem.png",
      },
      {
        "name": "Physics Lab",
        "room": "1104",
        "block": "Block 1",
        "floor": "First Floor",
        "image": "assets/labs/phy.png",
      },
      {
        "name": "Computer Labs - Block 1",
        "room": "1105, 1201A, 1201B, 1407A, 1408",
        "block": "Block 1",
        "floor": "Multiple Floors",
        "image": "assets/labs/comp1.png",
      },

      {
        "name": "Computer Labs - Block 2",
        "room": "2207, 2208, 2307, 2308, 2405A, 2406A",
        "block": "Block 2",
        "floor": "Multiple Floors",
        "image": "assets/labs/comp2.png",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Laboratory Directory"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: labs.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.72,
        ),
        itemBuilder: (context, index) {
          final lab = labs[index];

          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    child: Image.asset(
                      lab["image"]!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        lab["name"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        "Room: ${lab["room"]}",
                        textAlign: TextAlign.center,
                      ),

                      Text(
                        lab["block"]!,
                        textAlign: TextAlign.center,
                      ),

                      Text(
                        lab["floor"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}