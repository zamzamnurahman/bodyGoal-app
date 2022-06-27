import 'package:body_goal_app/data/resep.dart';
import 'package:body_goal_app/resep_masak.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailResep extends StatelessWidget {
  ModelResep? resep;
  DetailResep({Key? key, this.resep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF013B8D),
          title: Text('Resep ${resep!.nama}')),
      body: Stack(
        children: [
          ListView(
            children: [
              Image.asset('assets/images/resep/${resep!.gambar}'),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${resep!.nama}',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: '\nInformasi Kalori :\n',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(text: '${resep!.informasiKalori}\n'),
                    ])),
                    Text('Informasi Umum :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          resep!.informasiUmum!.length,
                          (index) => Text(
                                '${resep!.informasiUmum![index]}',
                              )),
                    ),
                    Text('\nRincian Nutrisi :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          resep!.rincianNutrisi!.length,
                          (index) => Text(
                                '${resep!.rincianNutrisi![index]}',
                              )),
                    ),
                    Text('\nBahan-bahan :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          resep!.bahanBahan!.length,
                          (index) => Text(
                                '${resep!.bahanBahan![index]}',
                              )),
                    ),
                    Text('\nPeralatan :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          resep!.peralatan!.length,
                          (index) => Text(
                                '${resep!.peralatan![index]}',
                              )),
                    ),
                    SizedBox(
                      height: 150,
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ResepMasak(
                      resep: resep,
                    );
                  }));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF013B8D),
                  ),
                  child: Center(
                    child: Text('Cara Memasak',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
