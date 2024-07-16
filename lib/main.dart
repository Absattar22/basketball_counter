import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

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
                      Image.asset('images/Raptors.png',
                          width: 150, height: 150),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Text('$TeamAPoints',
                          style: const TextStyle(
                            fontSize: 90,
                            fontWeight: FontWeight.bold,
                          )),
                      const Padding(padding: EdgeInsets.only(top: 10)),
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
                      const Padding(padding: EdgeInsets.only(top: 10)),
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
                      const Padding(padding: EdgeInsets.only(top: 10)),
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
                  height: 490,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      Image.asset('images/pit.png', width: 150, height: 150),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Text('$TeamBPoints',
                          style: const TextStyle(
                            fontSize: 90,
                            fontWeight: FontWeight.bold,
                          )),
                      const Padding(padding: EdgeInsets.only(top: 10)),
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
                      const Padding(padding: EdgeInsets.only(top: 10)),
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
                      const Padding(padding: EdgeInsets.only(top: 10)),
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
            const Padding(padding: EdgeInsets.only(top: 80)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    backgroundColor: const Color.fromARGB(255, 73, 138, 224)),
                onPressed: () {
                  setState(() {
                    TeamAPoints = 0;
                    TeamBPoints = 0;
                  });
                },
                child: const Text(
                  'Reset Points',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
                )),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
