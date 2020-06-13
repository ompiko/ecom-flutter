import 'package:flutter/material.dart';

import 'package:flutter_ecom/pages/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // SharedPreferences prefferences;
  bool loading = false;
  bool isLoading = false;

  // @override
  // void initState() {
  //   super.initState();
  //   isSigningIn();
  // }

  // void isSigningIn() async{
  //   setState(() {
  //     loading = true;
  //   });
  //   // prefferences = await SharedPreferences.getInstance();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title:
      //       new Text("Login", style: TextStyle(color: Colors.brown.shade600)),
      //   elevation: 0.9,
      // ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/bg-login.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
              color: Colors.black.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset('images/icon.png', width: 150.0, height: 150.0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  // TextFormField(
                  //   decoration: InputDecoration(labelText: "Email *"),
                  //   keyboardType: TextInputType.emailAddress,
                  //   validator: (value) {
                  //     if (value.isEmpty) {
                  //       Pattern pattern =
                  //           r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  //       RegExp regex = new RegExp(pattern);
                  //       if (!regex.hasMatch(value)) {
                  //         return 'Please make sure your email address is valid';
                  //       }
                  //     }
                  //     return null;
                  //   },
                  // )
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.3),
                      elevation: 0.0,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Username",
                            icon: Icon(Icons.person_outline),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              Pattern pattern =
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                              RegExp regex = new RegExp(pattern);
                              if (!regex.hasMatch(value))
                                return 'Please make sure your email address is valid';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.3),
                      elevation: 0.0,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            icon: Icon(Icons.alternate_email),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              Pattern pattern =
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                              RegExp regex = new RegExp(pattern);
                              if (!regex.hasMatch(value)) {
                                return 'Please make sure your email address is valid';
                              }
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.3),
                      elevation: 0.0,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            icon: Icon(Icons.lock_outline),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password field cannot be empty";
                            } else if (value.length < 6) {
                              return "Password has to be at least 6 characters long";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.amber.withOpacity(0.6),
                          elevation: 0.0,
                          child: MaterialButton(
                            onPressed: () {
                              HomePage();
                            },
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text("Register",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ))),
                ],
              ),
            ),
          ),
          Visibility(
              visible: loading ?? true,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white.withOpacity(0.9),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text("Already have a account? Login here", style: TextStyle(color: Colors.amberAccent.shade700, decoration: TextDecoration.underline, fontSize: 16.0),),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: Container(
      //   child: Padding(
      //       padding: const EdgeInsets.only(
      //           left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
      //       child: MaterialButton(
      //         onPressed: () {
      //           HomePage();
      //         },
      //         child: new Text(
      //           "Sign-In or Sign-Up with Google",
      //           style: TextStyle(color: Colors.white),
      //         ),
      //         color: Colors.amber,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(4.0),
      //           // side: BorderSide(color: Colors.amber),
      //         ),
      //       )),
      // ),
    );
  }
}
