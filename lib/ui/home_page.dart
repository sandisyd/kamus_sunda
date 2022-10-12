import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> pembelajaran = [
    {
      'title': 'Belajar 1',
      'deskrip': 'Perkenalan',
      'foto': 'img/intorduce/perkenalan.jpg',
      'onTap': () {}
    },
    {
      'title': 'Belajar 2',
      'deskrip': 'Percakapan',
      'foto': 'img/percakapan/ngobrol.jpg',
      'onTap': () {}
    }
  ];
  bool _isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              color: Colors.green[800],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://picsum.photos/seed/picsum/200/300'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Completed",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "10% Basa Sunda",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  )),
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: ListView.builder(
                      itemCount: pembelajaran.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 20, bottom: 20),
                          child: Card(
                            child: Row(
                              children: [
                                index == 0
                                    ? const Icon(Icons.check)
                                    : const Icon(Icons.circle_outlined),
                                Image(
                                  image: AssetImage(
                                    '${pembelajaran[index]['foto']}',
                                  ),
                                  height: 60,
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                        child: Text(
                                      "${pembelajaran[index]['title']}",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    Text(
                                      "${pembelajaran[index]['deskrip']}",
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),

                                // ListTile(
                                //   leading: Image(
                                //     image: AssetImage(
                                //       '${pembelajaran[index]['foto']}',
                                //     ),
                                //     height: 30,
                                //   ),
                                //   title:
                                //       Text("${pembelajaran[index]['title']}"),
                                //   subtitle: Text(
                                //       "${pembelajaran[index]['deskrip']}"),
                                // ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
