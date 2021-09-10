import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body: MycustomForm(),
    );
  }
}

class MycustomForm extends StatefulWidget {
  @override
  _MycustomFormState createState() => _MycustomFormState();
}

class _MycustomFormState extends State<MycustomForm> {
  final _formkey = GlobalKey<FormState>();
  String? _firstName = '';
  String? _lastName = '';
  int? _age = 20;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Your First Name',
              labelText: 'First Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Your First tName';
              }
            },
            onSaved: (value) {
              _firstName = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.family_restroom),
              hintText: 'Your Last Name',
              labelText: 'Last Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Your Last Name';
              }
            },
            onSaved: (value) {
              _lastName = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.speed),
              hintText: 'Your Age',
              labelText: 'Age',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Your Age';
              }

              try {
                if (int.parse(value) < 15) {
                  return 'Please enter valid age';
                }
              } catch (e) {
                return 'Please enter number only';
              }
            },
            onSaved: (value) {
              _age = int.parse(value!);
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
                print('$_firstName $_lastName $_age');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('$_firstName $_lastName $_age'),
                ));
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
