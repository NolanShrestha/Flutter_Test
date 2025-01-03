import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  Page3State createState() => Page3State();

  const Page3({
    super.key,
  });
}

class Page3State extends State<Page3> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _student = {'name': '', 'age': ''};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onSaved: (value) {
                  _student['name'] = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
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
                    return 'Please enter an age';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pop(context, _student);
                  }
                },
                child: const Text('Add Student'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
