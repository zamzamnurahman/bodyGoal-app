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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: List.generate(
                              widget.resep!.masak!.length,
                              (index) => GestureDetector(
                                    onTap: () {
                                      _pageC.animateTo(
                                        MediaQuery.of(context).size.width *
                                            index,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.fastOutSlowIn,
                                      );
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                  )),
                        ),
                      ),
                      Visibility(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 70,
                            width: 70,
                            alignment: Alignment.bottomRight,
                            margin:
                                const EdgeInsets.only(bottom: 40, right: 40),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.white, size: 30)),
                          ),
                        ),
                      ),
                    ]),
              ),
            ]),
      ),
    );
  }
}
