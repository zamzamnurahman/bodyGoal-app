import 'package:body_goal_app/data/resep.dart';
import 'package:body_goal_app/resep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResepPage extends StatefulWidget {
  const ResepPage({Key? key}) : super(key: key);

  @override
  State<ResepPage> createState() => _ResepPageState();
}

class _ResepPageState extends State<ResepPage> {
  List<ModelResep>? resep = Resep.getResep();
  List<ModelResep>? resepSarapan = Resep.getResepSarapan();
  List<ModelResep>? resepManis = Resep.getResepManis();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
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
        list_menu(resepSarapan, 'Rekomendasi Menu Sarapan'),
        list_menu(resepManis, 'Rekomendasi  yang suka manis'),
        listMenu_2(resep, 'Menu Lainnya'),
        const SizedBox(
          height: 150,
        ),
      ]),
    );
  }

  Widget list_menu(List? resep, String? namaMenu) {
    return Container(
      color: Colors.grey[200],
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Column(children: [
            Container(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                title: Text("$namaMenu",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_sharp),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      resep!.length,
                      (index) => GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return DetailResep(
                                  resep: resep[index],
                                );
                              }));
                            },
                            child: Container(
                              height: 150,
                              width: 100,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/resep/${resep[index].gambar}',
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      '${resep[index].nama}',
                                      textAlign: TextAlign.center,
                                    )
                                  ]),
                            ),
                          ))),
            )
          ]),
        )
      ]),
    );
  }

  Widget listMenu_2(List? resep, String? namaMenu) {
    return Container(
      color: Colors.grey[200],
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Column(children: [
            Container(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                title: Text("$namaMenu",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_sharp),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      resep!.length,
                      (index) => GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return DetailResep(
                                  resep: resep[index],
                                );
                              }));
                            },
                            child: Container(
                              height: 150,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.grey.withOpacity(0.2))),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Text('${resep[index].nama}',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Image.asset(
                                      'assets/images/resep/${resep[index].gambar}',
                                      fit: BoxFit.cover,
                                      height: 100,
                                    ),
                                  ]),
                            ),
                          ))),
            )
          ]),
        )
      ]),
    );
  }
}
