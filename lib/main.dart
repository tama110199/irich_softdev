import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

final TextStyle font1 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

var dataData = [
  {
    "nama": "Ramadhan Pratama",
    "nim": "240601171200021",
    "jk": "Laki-laki",
    "ttl": "Medan, 11 Januari 1999",
    "jurusan": "Informatika",
    "fakultas": "Sains dan Matematika"
  },
  {
    "nama": "Farhan Yursi",
    "nim": "24060117120002",
    "jk": "Laki-laki",
    "ttl": "Rantauprapat, 04 April 1999",
    "jurusan": "Informatika",
    "fakultas": "Sains dan Matematika"
  },
  {
    "nama": "Zharfan Akbar",
    "nim": "24060117120008",
    "jk": "Laki-laki",
    "ttl": "Boja, 01 April 1999",
    "jurusan": "Sistem Komputer",
    "fakultas": "Teknik"
  },
  {
    "nama": "Asraf",
    "nim": "24060117120030",
    "jk": "Laki-laki",
    "ttl": "Boja, 01 April 1999",
    "jurusan": "Sistem Komputer",
    "fakultas": "Teknik"
  },
  {
    "nama": "Asraf",
    "nim": "24060117120030",
    "jk": "Laki-laki",
    "ttl": "Boja, 01 April 1999",
    "jurusan": "Sistem Komputer",
    "fakultas": "Teknik"
  },
  {
    "nama": "Asraf",
    "nim": "24060117120030",
    "jk": "Laki-laki",
    "ttl": "Boja, 01 April 1999",
    "jurusan": "Sistem Komputer",
    "fakultas": "Teknik"
  },
  {
    "nama": "Asraf",
    "nim": "24060117120030",
    "jk": "Laki-laki",
    "ttl": "Boja, 01 April 1999",
    "jurusan": "Sistem Komputer",
    "fakultas": "Teknik"
  }
];

//Conditional Widget
// (kodisi) ? #widget apa yang terjadi jika benar : #Widget apa yang terjadi jika salah

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var flag = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar SoftDev"),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: <Widget>[
                for (int i = 0; i < dataData.length; i++) buildDataDiri(i)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDataDiri(int i) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            border: Border.all(
              color: Colors.green,
              width: 2,
            )),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${dataData[i]["nama"]}",
                      style: font1,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "(${dataData[i]["nim"]})",
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.green,
                ),
                IconButton(
                  icon: Icon(
                    (flag[i]) ? Icons.arrow_upward : Icons.arrow_downward,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    setState(() {
                      flag[i] = !flag[i];
                    });
                  },
                )
              ],
            ),
            AnimatedCrossFade(
              crossFadeState: (flag[i])
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 1000),
              firstChild: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text(
                          "Jenis Kelamin",
                          style: font1,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          ":",
                          style: font1,
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Text(
                          "${dataData[i]["jk"]}",
                          style: font1,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text(
                          "TTL",
                          style: font1,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          ":",
                          style: font1,
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Text(
                          "${dataData[i]["ttl"]}",
                          style: font1,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text(
                          "Jurusan",
                          style: font1,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          ":",
                          style: font1,
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Text(
                          "${dataData[i]["jurusan"]}",
                          style: font1,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Text(
                          "Fakultas",
                          style: font1,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          ":",
                          style: font1,
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Text(
                          "${dataData[i]["fakultas"]}",
                          style: font1,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              secondChild: Container(),
            )
          ],
        ),
      ),
    );
  }
}
