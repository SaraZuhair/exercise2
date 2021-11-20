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
                  right: 20,
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
                  right: 20,
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
                icon: const Icon(Icons.add),
              ),
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
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.favorite,
                color:
                    Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),
                size: sz,
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Slider(
                          min: 0,
                          max: 255,
                          value: red,
                          onChanged: (value) {
                            if (ColorisChecked) {
                              setState(() {
                                red = value;
                              });
                            }
                          },
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "${red.toInt()}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Slider(
                          min: 0,
                          max: 255,
                          value: green,
                          onChanged: (value) {
                            if (ColorisChecked) {
                              setState(() {
                                green = value;
                              });
                            }
                          },
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "${green.toInt()}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Slider(
                          min: 0,
                          max: 255,
                          value: blue,
                          onChanged: (value) {
                            if (ColorisChecked) {
                              setState(() {
                                blue = value;
                              });
                            }
                          },
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "${blue.toInt()}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
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
