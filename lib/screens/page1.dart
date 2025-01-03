import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  final Function(Map<String, String>) onAddStudent;

  const Page1({super.key, required this.onAddStudent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AddStudentForm(onAddStudent: onAddStudent),
    );
  }
}

class AddStudentForm extends StatefulWidget {
  final Function(Map<String, String>) onAddStudent;

  const AddStudentForm({super.key, required this.onAddStudent});

  @override
  AddStudentFormState createState() => AddStudentFormState();
}

class AddStudentFormState extends State<AddStudentForm> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _student = {
    'name': '',
    'age': '',
    'section': '',
    'semester': ''
  };

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Name'),
            onSaved: (value) {
              _student['name'] = value!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              _student['age'] = value!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your age';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Section'),
            onSaved: (value) {
              _student['section'] = value!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your section';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Semester'),
            onSaved: (value) {
              _student['semester'] = value!;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your semester';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                widget.onAddStudent(_student);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Student added successfully!')),
                );
                _formKey.currentState!.reset();
              }
            },
            child: const Text('Add Student'),
          ),
        ],
      ),
    );
  }
}
