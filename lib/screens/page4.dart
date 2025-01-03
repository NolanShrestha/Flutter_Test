import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  final Map<String, String> student;

  const Page4({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student Details',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${student['name']}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Age: ${student['age']}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Section: ${student['section']}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Semester: ${student['semester']}',
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
