//import 'dart:html';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "images/covid.jpg",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Login page $name",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 92),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "enter username",
                        labelText: "username",
                        suffixIcon: Align(
                            widthFactor: 2.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.person)),
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return "username cannot be emply";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "enter Password",
                        labelText: "Password",
                        suffixIcon: Align(
                          widthFactor: 2.0,
                          heightFactor: 1.0,
                          child: Icon(Icons.password),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return "password cannot be emply";
                        } else if (value.length < 8) {
                          return "password lengh should be 8";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 20 : 8),
                      child: InkWell(
                        onTap: () async => {
                          setState(() {
                            changebutton = true;
                          }),
                          await Future.delayed(Duration(seconds: 1)),
                          await Navigator.pushNamed(
                              context, MyRoutes.HomeRoute),
                          setState(() {
                            changebutton = false;
                          }),
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 100),
                          width: changebutton ? 30 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
