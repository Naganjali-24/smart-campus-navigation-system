import 'package:flutter/material.dart';
import 'faculty_details_screen.dart';

final facultyList = [

  {'name': 'A. Sai Hanuman (Principal)', 'room': '1004'},
  {'name': 'Nagamani (Administrative Office)', 'room': '1001'},

  {'name': 'Gopi', 'room': 'Exam Branch'},
  {'name': 'Deepti', 'room': 'Exam Branch'},
  {'name': 'Madhavi', 'room': 'Exam Branch'},
  {'name': 'Madhusudan', 'room': 'Exam Branch'},

  {'name': 'Swathi (Physics Lab)', 'room': '1104'},
  {'name': 'Vani (Chemistry Lab)', 'room': '1103'},

  {'name': 'Bhanu Teja', 'room': '1305'},
  {'name': 'Snehapriya', 'room': '1305'},

  {'name': 'Sailaja', 'room': '1306'},
  {'name': 'Saimatha', 'room': '1306'},
  {'name': 'Karthika', 'room': '1306'},
  {'name': 'Sudha', 'room': '1306'},
  {'name': 'Kashiram', 'room': '1306'},
  {'name': 'Sharma', 'room': '1306'},
  {'name': 'Rekha Rani', 'room': '1306'},
  {'name': 'Sireesha', 'room': '1306'},

  {'name': 'B. Lakshmi Prasanna', 'room': '1307'},
  {'name': 'Srinivasa Rao', 'room': '1307'},
  {'name': 'M. Jyothsna', 'room': '1307'},
  {'name': 'K. Jaya Jones', 'room': '1307'},
  {'name': 'V. Karthik', 'room': '1307'},
  {'name': 'K. Beulah', 'room': '1307'},
  {'name': 'Hepsiba', 'room': '1307'},
  {'name': 'K. Subbarap', 'room': '1307'},

  {'name': 'Kishore Babu (HOD)', 'room': '1406'},

  {'name': 'Saraswathi', 'room': '2201'},
  {'name': 'Swetha', 'room': '2201'},
  {'name': 'Harika', 'room': '2201'},
  {'name': 'Sandhya', 'room': '2201'},
  {'name': 'Priyanka', 'room': '2201'},
  {'name': 'Shiva Naga Jyothi', 'room': '2201'},

  {'name': 'Dr. Padmalaya Nayak (HOD)', 'room': '2202'},

  {'name': 'Srinivas', 'room': '2031'},
  {'name': 'Pallavi', 'room': '2031'},
  {'name': 'Dhanunjay', 'room': '2031'},

  {'name': 'Aruna', 'room': '2301'},
  {'name': 'Gayatri', 'room': '2301'},
  {'name': 'Nandakishore', 'room': '2301'},
  {'name': 'Bapiraju', 'room': '2301'},
  {'name': 'Archana', 'room': '2301'},

  {'name': 'Grace', 'room': '2302'},
  {'name': 'Dr. Rani', 'room': '2302'},
  {'name': 'Lakshmi Bhargavi', 'room': '2302'},
  {'name': 'Nagaraju', 'room': '2302'},
  {'name': 'Vanitha', 'room': '2302'},

  {'name': 'Naga Jyothi', 'room': '2208'},
  {'name': 'Swapna B', 'room': '2208'},

  {'name': 'G. Sravanthi', 'room': '2207'},
  {'name': 'K. Swapna', 'room': '2207'},

  {'name': 'Usha Sree', 'room': '2405A'},
  {'name': 'Sumalatha', 'room': '2405A'},

  {'name': 'Meghana', 'room': '2405B'},
  {'name': 'V. Vani', 'room': '2405B'},

  {'name': 'Shakuntala Devi', 'room': '2406A'},
  {'name': 'Shraddha', 'room': '2406B'},
  {'name': 'Ganga Swathi', 'room': '2406B'},
];

class FacultyDirectoryScreen extends StatefulWidget {
  const FacultyDirectoryScreen({super.key});

  @override
  State<FacultyDirectoryScreen> createState() =>
      _FacultyDirectoryScreenState();
}

class _FacultyDirectoryScreenState
    extends State<FacultyDirectoryScreen> {

  String searchText = '';

  @override
  Widget build(BuildContext context) {

    final filteredFaculty = facultyList.where((faculty) {
      return faculty['name']!
          .toLowerCase()
          .contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Faculty Directory'),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search Faculty...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: filteredFaculty.length,
              itemBuilder: (context, index) {

                final faculty = filteredFaculty[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    title: Text(
                      faculty['name'] ?? 'Unknown',
                    ),
                    subtitle: Text(
                      'Room No: ${faculty['room'] ?? 'N/A'}',
                    ),

                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FacultyDetailsScreen(
                            name: faculty['name'] ?? '',
                            room: faculty['room'] ?? '',
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}