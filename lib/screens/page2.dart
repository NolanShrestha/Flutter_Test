import 'package:flutter/material.dart';
import 'package:test/screens/page4.dart';

class Page2 extends StatelessWidget {
  final List<Map<String, String>> students;

  const Page2({super.key, required this.students});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: students.isEmpty
          ? const Center(child: Text('No students added yet.'))
          : ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 8.0),
                  child: ListTile(
                    tileColor: Colors.blue.shade50,
                    textColor: Colors.blue.shade900,
                    title: Text(
                      students[index]['name']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing:
                        const Icon(Icons.arrow_forward, color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page4(
                            student: students[index],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
