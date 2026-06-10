import 'package:flutter/material.dart';

class FloorMapScreen extends StatelessWidget {
  const FloorMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Floor Maps"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            elevation: 5,
            child: ExpansionTile(
              leading: const Icon(
                Icons.apartment,
                color: Colors.blue,
              ),
              title: const Text(
                "Block 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                floorTile(context, "Block 1", "Ground Floor"),
                floorTile(context, "Block 1", "First Floor"),
                floorTile(context, "Block 1", "Second Floor"),
                floorTile(context, "Block 1", "Third Floor"),
                floorTile(context, "Block 1", "Fourth Floor"),
              ],
            ),
          ),

          const SizedBox(height: 15),

          Card(
            elevation: 5,
            child: ExpansionTile(
              leading: const Icon(
                Icons.apartment,
                color: Colors.green,
              ),
              title: const Text(
                "Block 2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                floorTile(context, "Block 2", "Ground Floor"),
                floorTile(context, "Block 2", "First Floor"),
                floorTile(context, "Block 2", "Second Floor"),
                floorTile(context, "Block 2", "Third Floor"),
                floorTile(context, "Block 2", "Fourth Floor"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget floorTile(
      BuildContext context,
      String block,
      String floor,
      ) {
    return ListTile(
      leading: const Icon(Icons.map),
      title: Text(floor),
      subtitle: Text(block),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => FloorLayoutScreen(
              block: block,
              floor: floor,
            ),
          ),
        );
      },
    );
  }
}

class FloorLayoutScreen extends StatelessWidget {
  final String block;
  final String floor;

  const FloorLayoutScreen({
    super.key,
    required this.block,
    required this.floor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$block - $floor"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [

                    if (block == "Block 1" && floor == "Ground Floor")
                      Image.asset("assets/images/10.png", height: 500)
                    else if (block == "Block 1" && floor == "First Floor")
                      Image.asset("assets/images/11.png", height: 500)
                    else if (block == "Block 1" && floor == "Second Floor")
                        Image.asset("assets/images/12.png", height: 500)
                      else if (block == "Block 1" && floor == "Third Floor")
                          Image.asset("assets/images/13.png", height: 500)
                        else if (block == "Block 1" && floor == "Fourth Floor")
                            Image.asset("assets/images/14.png", height: 500)

                          else if (block == "Block 2" && floor == "Ground Floor")
                              Image.asset("assets/images/20.png", height: 500)
                            else if (block == "Block 2" && floor == "First Floor")
                                Image.asset("assets/images/21.png", height: 500)
                              else if (block == "Block 2" && floor == "Second Floor")
                                  Image.asset("assets/images/22.png", height: 500)
                                else if (block == "Block 2" && floor == "Third Floor")
                                    Image.asset("assets/images/23.png", height: 500)
                                  else if (block == "Block 2" && floor == "Fourth Floor")
                                      Image.asset("assets/images/24.png", height: 500)

                                    else
                                      const Icon(
                                        Icons.image,
                                        size: 120,
                                        color: Colors.blue,
                                      ),
                    const SizedBox(height: 20),

                    Text(
                      block,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      floor,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Floor map image will be displayed here.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.navigation,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Navigation Information",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "You are viewing the layout of $floor in $block. Use this floor map to locate classrooms, laboratories, offices and campus facilities.",
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