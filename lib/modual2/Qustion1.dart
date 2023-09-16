import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Change(),
    );
  }
}
class Change extends StatefulWidget {
  const Change({Key? key}) : super(key: key);
  @override
  State<Change> createState() => _ChangeState();
}
class _ChangeState extends State<Change> {
  var name='';
  var _text=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20,80,20,0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                    print(name);
                  });
                },
                controller: _text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter Alphabets",
                ),
              ),
              SizedBox(
                height: 20,
              ),
               Text(name.characters.toList().reversed.join(''),style: TextStyle(
                 fontSize: 20,
               )),
            ],
          ),
        ),
      )
    );
  }
}

