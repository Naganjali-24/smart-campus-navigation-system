import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/room_data.dart';
import 'floor_map_screen.dart';

class RoomSearchScreen extends StatefulWidget {
  const RoomSearchScreen({super.key});

  @override
  State<RoomSearchScreen> createState() => _RoomSearchScreenState();
}

class _RoomSearchScreenState extends State<RoomSearchScreen> {
  final TextEditingController controller = TextEditingController();

  Map<String, dynamic>? result;

  void searchRoom() {
    final query = controller.text.trim().toLowerCase();

    for (var room in rooms) {
      if (room["roomNo"].toString().toLowerCase() == query ||
          room["roomName"].toString().toLowerCase().contains(query)) {
        setState(() {
          result = room;
        });
        return;
      }
    }

    setState(() {
      result = null;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Room not found"),
      ),
    );
  }

  Future<void> openMaps(String block) async {
    String url;

    if (block == "Block 1") {
      url =
      "https://www.google.com/maps/search/?api=1&query=17.522180,78.367860";
    } else {
      url =
      "https://www.google.com/maps/search/?api=1&query=17.522180,78.367860";
    }

    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Room Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Enter Room Number or Room Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: searchRoom,
                ),
              ),
            ),

            const SizedBox(height: 20),

            if (result != null)
              Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 50,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        result!["roomName"],
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      Text(
                        "Room Number : ${result!["roomNo"]}",
                        style: const TextStyle(fontSize: 16),
                      ),

                      Text(
                        "Block : ${result!["block"]}",
                        style: const TextStyle(fontSize: 16),
                      ),

                      Text(
                        "Floor : ${result!["floor"]}",
                        style: const TextStyle(fontSize: 16),
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton.icon(
                        onPressed: () {
                          openMaps(result!["block"]);
                        },
                        icon: const Icon(Icons.navigation),
                        label: Text(
                          "Navigate To ${result!["block"]}",
                        ),
                      ),

                      const SizedBox(height: 10),

                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => FloorLayoutScreen(
                                block: result!["block"],
                                floor: result!["floor"],
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.map),
                        label: const Text(
                          "View Floor Map",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}