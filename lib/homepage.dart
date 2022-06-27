import 'package:body_goal_app/homepage_akun.dart';
import 'package:body_goal_app/homepage_home.dart';
import 'package:body_goal_app/homepage_latihan.dart';
import 'package:body_goal_app/homepage_resep.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int menu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            IndexedStack(
              index: menu,
              children: const [
                ResepPage(),
                LatihanPage(),
                Home(),
                AkunPage(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Color(0xFF5587CE),
                  width: double.infinity,
                  height: 70,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 35,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Resep
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              menu = 0;
                            });
                            print(menu);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 5,
                                  color: menu == 0
                                      ? Colors.white
                                      : Colors.transparent,
                                )),
                            child: CircleAvatar(
                              minRadius: menu == 0 ? 40 : 30,
                              backgroundColor: menu == 0
                                  ? Color(0xFF013B8D)
                                  : Color(0xffA5C1EA),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/resep.png',
                                    width: menu == 0 ? 40 : 30,
                                    color:
                                        menu == 0 ? Colors.white : Colors.black,
                                  ),
                                  Text('Resep',
                                      style: TextStyle(
                                          fontSize: menu == 0 ? 16 : 12,
                                          color: menu == 0
                                              ? Colors.white
                                              : Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Latihan
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              menu = 1;
                            });
                            print(menu);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 5,
                                  color: menu == 1
                                      ? Colors.white
                                      : Colors.transparent,
                                )),
                            child: CircleAvatar(
                              minRadius: menu == 1 ? 40 : 30,
                              backgroundColor: menu == 1
                                  ? Color(0xFF013B8D)
                                  : Color(0xffA5C1EA),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/latihan.png',
                                    width: menu == 1 ? 40 : 30,
                                    color:
                                        menu == 1 ? Colors.white : Colors.black,
                                  ),
                                  Text('Latihan',
                                      style: TextStyle(
                                          fontSize: menu == 1 ? 15 : 12,
                                          color: menu == 1
                                              ? Colors.white
                                              : Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Home
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              menu = 2;
                            });
                            print(menu);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 5,
                                  color: menu == 2
                                      ? Colors.white
                                      : Colors.transparent,
                                )),
                            child: CircleAvatar(
                              minRadius: menu == 2 ? 40 : 30,
                              backgroundColor: menu == 2
                                  ? Color(0xFF013B8D)
                                  : Color(0xffA5C1EA),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/home.png',
                                    width: menu == 2 ? 40 : 30,
                                    color:
                                        menu == 2 ? Colors.white : Colors.black,
                                  ),
                                  Text('Home',
                                      style: TextStyle(
                                          fontSize: menu == 2 ? 16 : 12,
                                          color: menu == 2
                                              ? Colors.white
                                              : Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Akun
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              menu = 3;
                            });
                            print(menu);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 5,
                                  color: menu == 3
                                      ? Colors.white
                                      : Colors.transparent,
                                )),
                            child: CircleAvatar(
                              minRadius: menu == 3 ? 40 : 30,
                              backgroundColor: menu == 3
                                  ? Color(0xFF013B8D)
                                  : Color(0xffA5C1EA),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/akun.png',
                                    width: menu == 3 ? 30 : 20,
                                    color:
                                        menu == 3 ? Colors.white : Colors.black,
                                  ),
                                  Text('Resep',
                                      style: TextStyle(
                                          fontSize: menu == 3 ? 16 : 12,
                                          color: menu == 3
                                              ? Colors.white
                                              : Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
