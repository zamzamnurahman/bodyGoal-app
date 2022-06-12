import 'package:body_goal_app/model/form.dart';
import 'package:body_goal_app/sign_up.dart';
import 'package:body_goal_app/theme.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var _username = TextEditingController();
  var _password = TextEditingController();
  bool isCheck = false;

  @override
  void initState() {
    _username;
    _password;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AlertDialog alertTrue = AlertDialog(
      title: Text("SIGN IN DONE"),
      content: Text("Welcome ${_username.text}"),
      actions: [
        FlatButton(
            child: Text("OK"), onPressed: () => Navigator.of(context).pop()),
      ],
    );
    AlertDialog alertFalse = AlertDialog(
      title: Text("SIGN IN False"),
      content: Text("Input your account"),
      actions: [
        FlatButton(
            child: Text("OK"), onPressed: () => Navigator.of(context).pop()),
      ],
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: kBlack,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Column(children: const [
              Text(
                'SIGN IN',
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
              child: Image.asset(
                'assets/images/olahaaga_person.png',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Hello!',
              style: TextStyle(
                color: kBlue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Mari bersama sama membentuk\n Tubuh yang Ideal',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Column(children: [
                Formulir(
                  nama: 'USERNAME',
                  icon: Icons.person,
                  controller: _username,
                ),
                const SizedBox(
                  height: 15,
                ),
                Formulir(
                  nama: "PASSWORD",
                  icon: Icons.lock,
                  controller: _password,
                  obsecure: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isCheck = isCheck ? false : true;
                            });
                          },
                          icon: isCheck
                              ? const Icon(Icons.check_box, color: kBlue)
                              : const Icon(Icons.check_box_outline_blank),
                        ),
                        const Text('Remember Me')
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Forgot Password ?"),
                    )
                  ],
                )
              ]),
            ),
            ElevatedButton(
              onPressed: () {
                if (_username.text != '' && _password.text != '') {
                  showDialog(context: context, builder: (context) => alertTrue);
                  print("BERHASIL LOG IN");
                  print("Username : " + _username.text);
                  print("Password : " + _password.text);
                  if (isCheck) {
                    print("Remember me : True");
                  } else {
                    print("Remember me : False");
                  }
                } else {
                  print("masukan username dan password");
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
                'LOG IN',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _username;
    _password;
    super.dispose();
  }
}
