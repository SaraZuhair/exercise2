import 'package:flutter/material.dart';

// ignore: camel_case_types
class exercise extends StatefulWidget {
  const exercise({Key? key}) : super(key: key);

  @override
  _exerciseState createState() => _exerciseState();
}

class _exerciseState extends State<exercise> {
  // ignore: non_constant_identifier_names
  bool SizeisChecked = true;
  bool ColorisChecked = true;
  double red = 0.0;
  double blue = 0.0;
  double green = 0.0;
  double sz = 200.0;
  double s = 100;
  double small = 50;
  double med = 300;
  double large = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Icon"),
        backgroundColor: Colors.brown,
        actions: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Center(
              child: IconButton(
                padding: EdgeInsets.only(
                  right: 5,
                ),
                onPressed: () {
                  if (SizeisChecked) {
                    setState(() {
                      if (sz - small == 0 || sz - small < 0) {
                        sz = 1;
                      } else {
                        sz = sz - small;
                      }
                    });
                  }
                },
                icon: const Icon(Icons.remove),
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          GestureDetector(
            onTap: () {
              if (SizeisChecked) {
                setState(() {
                  sz = s;
                });
              }
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: const Center(
                child: Text("S",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          GestureDetector(
            onTap: () {
              if (SizeisChecked) {
                setState(() {
                  sz = med;
                });
              }
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: const Center(
                child: Text("M",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          GestureDetector(
            onTap: () {
              if (SizeisChecked) {
                setState(() {
                  sz = large;
                });
              }
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: const Center(
                child: Text("L",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Center(
              child: IconButton(
                  padding: EdgeInsets.only(
                    right: 10,
                  ),
                  onPressed: () {
                    if (SizeisChecked) {
                      setState(() {
                        if (sz + small > 1500) {
                          sz = 1500;
                        } else {
                          sz = sz + small;
                        }
                      });
                    }
                  },
                  icon: const Icon(Icons.add)),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Text("Allow Resize"),
              trailing: Checkbox(
                value: SizeisChecked,
                onChanged: (value) {
                  setState(() {
                    SizeisChecked = value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: const Text("Allow change primer color"),
              trailing: Checkbox(
                value: ColorisChecked,
                onChanged: (value) {
                  setState(() {
                    ColorisChecked = value!;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: exercise(),
      ),
    ),
  );
}
