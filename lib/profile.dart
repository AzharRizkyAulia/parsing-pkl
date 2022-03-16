import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:parsing/sample_json.dart';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<Profile> {
  late String _jsonContent = "";
  late String _name = "";
  Future _loadSampleJson() async {
    String jsonString = await rootBundle.loadString("assets/sample.json");
    final jsonData = json.decode(jsonString);
    Sample sample = Sample.fromJson(jsonData);
    setState(() {
      _jsonContent = sample.toString();
      _name = sample.name.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
            "Read JSON",
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.pinkAccent),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      height: 100,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "My Profile",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 400,
                      margin: EdgeInsets.all(15),
                      child: DataTable(
                        dataTextStyle: TextStyle(color: Colors.white),
                        columns: const <DataColumn>[
                          DataColumn(
                              label: Text("Nama",
                                  style: TextStyle(color: Colors.white))),
                          DataColumn(
                              label: Text("-",
                                  style: TextStyle(color: Colors.white))),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Umur")),
                              DataCell(Text("-")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Tempat Tanggal Lahir")),
                              DataCell(Text("-")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Jenis Kelamin")),
                              DataCell(Text("-")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Agama")),
                              DataCell(Text("-")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Alamat")),
                              DataCell(Text("-")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Hobi")),
                              DataCell(Text("-\n-\n-")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Github Profile")),
                              DataCell(Text("-\n-")),
                            ],
                          ),
                        ],
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 190,
                            height: 100,
                            margin: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "Article",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            width: 190,
                            margin: EdgeInsets.all(10),
                            height: 100,
                            child: Center(
                              child: Text(
                                "Article",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 190,
                            height: 100,
                            margin: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "Article",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            width: 190,
                            margin: EdgeInsets.all(10),
                            height: 100,
                            child: Center(
                              child: Text(
                                "Article",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ]),
                    GestureDetector(
                      onTap: () {
                        _loadSampleJson();
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        alignment: Alignment.center,
                        child: const Text(
                          "See My Profile",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
