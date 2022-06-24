import 'package:flutter/material.dart';

class Homepage_resep extends StatefulWidget {
  const Homepage_resep({Key key}) : super(key: key);

  @override
  State<Homepage_resep> createState() => _Homepage_resepState();
}

class _Homepage_resepState extends State<Homepage_resep> {
  @override
  Widget build(BuildContext context) {
    int menu = 1;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(children: [
              Container(
                padding: const EdgeInsets.all(25),
                color: const Color(0xFF013B8D),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Resep",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                isCollapsed: true,
                                isDense: true,
                                border: InputBorder.none,
                                label: Text(
                                  "Search",
                                )),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              list_menu(),
              list_menu(),
              list_menu(),
              SizedBox(
                height: 100,
              )
            ]),
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              menu = 0;
                            });
                            print(menu);
                          },
                          child: CircleAvatar(
                            minRadius: menu == 0 ? 40 : 30,
                            backgroundColor: menu == 0
                                ? Color(0xFF013B8D)
                                : Color(0xffA5C1EA),
                            child: Icon(
                              Icons.breakfast_dining,
                              size: menu == 0 ? 50 : 30,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              menu = 1;
                            });
                            print(menu);
                          },
                          child: CircleAvatar(
                            minRadius: menu == 1 ? 40 : 30,
                            backgroundColor: menu == 1
                                ? Color(0xFF013B8D)
                                : Color(0xffA5C1EA),
                            child: Icon(
                              Icons.breakfast_dining,
                              size: menu == 1 ? 50 : 30,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              menu = 2;
                            });
                            print(menu);
                          },
                          child: CircleAvatar(
                            minRadius: menu == 2 ? 40 : 30,
                            backgroundColor: menu == 2
                                ? Color(0xFF013B8D)
                                : Color(0xffA5C1EA),
                            child: Icon(
                              Icons.breakfast_dining,
                              size: menu == 2 ? 50 : 30,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              menu = 3;
                            });
                            print(menu);
                          },
                          child: CircleAvatar(
                            minRadius: menu == 3 ? 40 : 30,
                            backgroundColor: menu == 3
                                ? Color(0xFF013B8D)
                                : Color(0xffA5C1EA),
                            child: Icon(
                              Icons.breakfast_dining,
                              size: menu == 3 ? 50 : 30,
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

  Widget list_menu() {
    return Container(
      color: Colors.grey[200],
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Column(children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                title: Text("Rekomendasi Menu Sarapan",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_sharp),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(3, (index) => menu())),
            )
          ]),
        )
      ]),
    );
  }

  Widget menu() {
    return Container(
      height: 150,
      width: 100,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'assets/images/olahaaga_person.png',
          fit: BoxFit.cover,
        ),
        Text(
          'Nama Makanan',
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
