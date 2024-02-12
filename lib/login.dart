import 'package:flutter/material.dart';
import 'package:projectone/home.dart';
import 'package:projectone/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Instalogin extends StatefulWidget {
  Instalogin({super.key});

  @override
  State<Instalogin> createState() => _InstaloginState();
}

class _InstaloginState extends State<Instalogin> {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _confpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Container(
            width: 290,
            height: 500,
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "INSTAGRAM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _username,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter a valid username";
                        } else if (value.isNotEmpty) {
                          String exp = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
                          RegExp regex = RegExp(exp);
                          String emailId = _username.text;
                          if (!regex.hasMatch(emailId)) {
                            return " please enter a valid email";
                          } else {
                            return null;
                          }
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "phone number,username or email",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _password,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter a valid data";
                        } else if (value.isNotEmpty) {
                          String pattern =
                              r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$';
                          String password = _password.text;
                          RegExp regExp = RegExp(pattern);
                          if (!regExp.hasMatch(password)) {
                            return "Password must be at least 8 characters long and include\n an uppercase letter, a lowercase letter, and a digit";
                          }
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.black,
                          // label: Text("@gmail.com"),
                          hintText: "password",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    TextFormField(
                      controller: _confpassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter a valid data";
                        } else if (value.isNotEmpty) {
                          String password = _password.text;
                          String passwordConfirm = _confpassword.text;
                          if (password != passwordConfirm) {
                            return "password doesn't match";
                          } else {
                            return null;
                          }
                        }
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.black,
                          // label: Text("@gmail.com"),
                          hintText: " confirm password",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () async {
                            final _sharedpref =
                                await SharedPreferences.getInstance();
                            await _sharedpref.setBool(
                                sharedPreferenceKey, true);

                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.red,
                                  behavior: SnackBarBehavior.floating,
                                  margin: EdgeInsets.all(20),
                                  content: Text("login....."),
                                ),
                              );

                              // route
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return InstaHome();
                                  },
                                ),
                              );
                            } else {}
                          },
                          child: Text(" login "),
                        )),
                    SizedBox(
                      height: 17,
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                            width: 100,
                            height: 1,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "or",
                          style: TextStyle(color: Colors.white10),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                            height: 1,
                            width: 100,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    Container(
                      height: 40,
                      width: 290,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                          Text(
                            "sign up with facebook",
                            style: TextStyle(
                              color: Colors.white10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
