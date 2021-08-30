import 'package:flutter/material.dart';

class Project11 extends StatefulWidget {
  @override
  _Project11State createState() => _Project11State();
}

class _Project11State extends State<Project11> {
  final _formKey = GlobalKey<FormState>();

  String x = '*';
  String y = '#';
  String z = '@';
  String s = ' ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: !false,
      home: Scaffold(
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: 'please enter name',
                      labelText: 'name',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter any text';
                      } else if (value.contains(x)) {
                        return '* not valid';
                      } else if (value.contains(y)) {
                        return '# not valid';
                      }
                    }),
                TextFormField(
                    decoration: InputDecoration(
                      hintText: 'please enter emaill',
                      labelText: 'email',
                    ),
                    validator: (value1) {
                      if (value1 == null || value1.isEmpty) {
                        return 'please enter any text';
                      } else if (!value1.contains(z)) {
                        return 'please enter emaill with @';
                      }
                    }),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'please enter password',
                      labelText: 'password',
                    ),
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return 'please enter any text';
                      } else if (password.contains(s)) {
                        return 'Enter Password Without Space';
                      }
                    }),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('proccesing data')));
                    }
                  },
                  child: Text('subment'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
