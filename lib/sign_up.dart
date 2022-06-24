import 'package:body_goal_app/homepage_resep.dart';
import 'package:body_goal_app/model/form.dart';
import 'package:body_goal_app/theme.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String gender;
  var _username = TextEditingController();
  var _email = TextEditingController();
  var _noHp = TextEditingController();
  var _password = TextEditingController();
  var _birthday = TextEditingController();

  @override
  void initState() {
    _username;
    _email;
    _noHp;
    _password;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AlertDialog alertTrue = AlertDialog(
      title: Text("SIGN UP DONE"),
      content: Text("Input your account in LOG IN"),
      actions: [
        FlatButton(
            child: Text("OK"), onPressed: () => Navigator.of(context).pop()),
      ],
    );
    AlertDialog alertFalse = AlertDialog(
      title: Text("SIGN UP False"),
      content: Text("Input your account in Form"),
      actions: [
        FlatButton(
            child: Text("OK"), onPressed: () => Navigator.of(context).pop()),
      ],
    );
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(children: const [
              SizedBox(
                height: 20,
              ),
              Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'for Your ',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Body Goals',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kBlue,
                    ))
              ]))
            ]),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 70),
              child: Hero(
                tag: 'cover',
                child: Image.asset(
                  'assets/images/olahaaga_person.png',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: Column(children: [
                Formulir(
                  nama: "Username",
                  icon: Icons.person,
                  controller: _username,
                ),
                const SizedBox(
                  height: 10,
                ),
                Formulir(
                  nama: "Email",
                  icon: Icons.email,
                  controller: _email,
                ),
                const SizedBox(
                  height: 10,
                ),
                Formulir(
                  nama: "No.Hanphone",
                  icon: Icons.phone,
                  controller: _noHp,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: kBlue)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_search_sharp,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          items: const <DropdownMenuItem<String>>[
                            DropdownMenuItem(
                              child: Text('Laki-laki'),
                              value: 'Laki-laki',
                            ),
                            DropdownMenuItem<String>(
                              value: 'Perempuan',
                              child: Text('Perempuan'),
                            ),
                          ],
                          value: gender,
                          hint: const Text('Gender'),
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Formulir(
                  nama: "Date of birth  (dd-mm-yyy)",
                  icon: Icons.date_range,
                  controller: _birthday,
                ),
                const SizedBox(
                  height: 10,
                ),
                Formulir(
                  nama: "Password",
                  icon: Icons.lock,
                  controller: _password,
                  obsecure: true,
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_username.text != '' && _password.text != '') {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return Homepage_resep();
                  }));
                } else {
                  print("Masukkan data diri anda");
                  showDialog(
                      context: context, builder: (context) => alertFalse);
                }
              },
              style: ElevatedButton.styleFrom(
                primary: kBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 120,
                  vertical: 15,
                ),
              ),
              child: const Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    ));
  }
}
