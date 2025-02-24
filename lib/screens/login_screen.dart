import 'package:ecommerce/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/screens/forgot_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  String _userEmail = "";
  String _userPassword = "";
  void _onsaved() {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();

      Navigator.push(
          context, MaterialPageRoute(builder: (ctx) => ForgotScreen()));
      print(_userEmail);
      print(_userPassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                ),
                Image.asset(
                  "assets/images/freed.png",
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Enter Esmail",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                        validator: (value) {
                          if (value == "" ||
                              value == null ||
                              value.contains("@") == false) {
                            return "Please enter a valid email";
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          _userEmail = newValue!;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Enter Password",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.remove_red_eye)),
                        validator: (value) {
                          if (value == null ||
                              value == "" ||
                              value.length < 6) {
                            return "Please verify your password";
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          _userPassword = newValue!;
                        },
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotScreen()));
                            },
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                color: Color(0xFFDB3022),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: _onsaved,
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(55),
                            backgroundColor: Color(0xFFDB3022),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't Have an account?",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupScreen()));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xFFDB3022),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
