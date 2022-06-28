import 'package:body_goal_app/data/resep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResepMasak extends StatefulWidget {
  ModelResep? resep;
  ResepMasak({Key? key, this.resep}) : super(key: key);

  @override
  State<ResepMasak> createState() => _ResepMasakState();
}

class _ResepMasakState extends State<ResepMasak> {
  int pageIndex = 0;
  final _pageC = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF013B8D),
          title: Text("Cara Memasak ${widget.resep!.nama}")),
      body: Container(
        // margin: EdgeInsets.symmetric(vertical: 70),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: PageView(
                  controller: _pageC,
                  onPageChanged: (int page) {
                    setState(() {
                      pageIndex = page;
                    });
                  },
                  children: List.generate(
                    widget.resep!.gambarMasak!.length,
                    (index) => Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Image.asset(
                                'assets/images/resep/${widget.resep!.gambarMasak![index]}',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: '\nLangkah ke- ${index + 1}\n\n',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: '${widget.resep!.masak![index]}')
                                ]))),
                          ]),
                    ),
                  ),
                ),
              ),
              Container(
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            widget.resep!.masak!.length,
                            (index) => GestureDetector(
                                  onTap: () {
                                    _pageC.animateTo(
                                      MediaQuery.of(context).size.width * index,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.fastOutSlowIn,
                                    );
                                  },
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    decoration: BoxDecoration(
                                        color: pageIndex == index
                                            ? Color(0xFF013B8D)
                                            : Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                          width: 1,
                                          color: pageIndex != index
                                              ? Color(0xFF013B8D)
                                              : Colors.white,
                                        )),
                                  ),
                                )),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (pageIndex >= 0) {
                                _pageC.animateTo(
                                  MediaQuery.of(context).size.width *
                                      pageIndex--,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.fastOutSlowIn,
                                );
                              }
                              print(pageIndex);
                            },
                            child: Container(
                              height: 50,
                              width: 150,
                              alignment: Alignment.bottomRight,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Color(
                                        0xFF013B8D,
                                      )),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                  child: Text('Sebelumnya',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF013B8D)))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (pageIndex < widget.resep!.masak!.length) {
                                _pageC.animateTo(
                                  MediaQuery.of(context).size.width *
                                      pageIndex++,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.fastOutSlowIn,
                                );
                              }
                              print(pageIndex);
                            },
                            child: Container(
                              height: 50,
                              width: 150,
                              alignment: Alignment.bottomRight,
                              decoration: BoxDecoration(
                                  color: Color(0xFF013B8D),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                  child: Text('Selanjutnya',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))),
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
