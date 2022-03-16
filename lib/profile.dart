import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
            "Rumus Bangun Datar",
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.lightBlueAccent),
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
                      child: Center(
                        child: Text(
                          "Biodata Diri",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 300,
                      margin: EdgeInsets.all(10),
                      child: ClipOval(
                        child: Image(image: AssetImage('assets/img/foto1.png')),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 400,
                      margin: EdgeInsets.all(20),
                      child: DataTable(
                        dataTextStyle: TextStyle(color: Colors.white),
                        columns: const <DataColumn>[
                          DataColumn(
                              label: Text("Nama",
                                  style: TextStyle(color: Colors.white))),
                          DataColumn(
                              label: Text("Azhar Rizky Aulia",
                                  style: TextStyle(color: Colors.white))),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Tempat Tanggal Lahir")),
                              DataCell(Text("Bandung, 06 Maret 2005")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Jenis Kelamin")),
                              DataCell(Text("Laki-Laki")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Agama")),
                              DataCell(Text("Islam")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Alamat")),
                              DataCell(Text("Komplek Rancamanyar Regency 2")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Sekolah")),
                              DataCell(Text("SMK Assalaam Bandung")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Kelas")),
                              DataCell(Text("XII RPL 3")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Hobi")),
                              DataCell(Text("Menggambar")),
                            ],
                          ),
                        ],
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    )
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
