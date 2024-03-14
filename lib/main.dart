import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  // ignore: non_constant_identifier_names
  int TeamAPoints = 0;
  // ignore: non_constant_identifier_names
  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Points Counter"),
          backgroundColor: const Color.fromARGB(255, 73, 138, 224),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      Image.asset('images/lakers.png', width: 100, height: 100),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text(
                        'Team A',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Text('$TeamAPoints',
                          style: const TextStyle(fontSize: 80)),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(170, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 73, 138, 224)),
                          onPressed: () {
                            setState(() {
                              TeamAPoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(170, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 73, 138, 224)),
                          onPressed: () {
                            setState(() {
                              TeamAPoints += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Points',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(170, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 73, 138, 224)),
                          onPressed: () {
                            setState(() {
                              TeamAPoints += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Points',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      Image.asset('images/warriors.png',
                          width: 100, height: 100),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text(
                        'Team B',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Text('$TeamBPoints',
                          style: const TextStyle(fontSize: 80)),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(170, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 73, 138, 224)),
                          onPressed: () {
                            setState(() {
                              TeamBPoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(170, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 73, 138, 224)),
                          onPressed: () {
                            setState(() {
                              TeamBPoints += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Points',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(170, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 73, 138, 224)),
                          onPressed: () {
                            setState(() {
                              TeamBPoints += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Points',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ],
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    backgroundColor: const Color.fromARGB(255, 204, 26, 76)),
                onPressed: () {
                  setState(() {
                    TeamAPoints = 0;
                    TeamBPoints = 0;
                  });
                },
                child: const Text(
                  'Reset Points',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
