import 'package:convre/Constant/buttons.dart';
import 'package:convre/Constant/colors.dart';
import 'package:convre/Constant/form_field.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height - 40,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    primary: true,
                    children: [
                      ///Logo and text
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/logo.png",
                              width: MediaQuery.of(context).size.width - 150,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Welcome to Convre, Africa's best. Your communities are waiting for you",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: grey),
                            ),

                            const SizedBox(
                              height: 35,
                            ),
                            //Social buttons
                            SocialButton(
                                text: "Continue with Google",
                                icon: Image.asset(
                                  "assets/google.png",
                                  width: 50,
                                )),
                            const SizedBox(
                              height: 15,
                            ),

                            SocialButton(
                                text: "Continue with Facebook",
                                icon: Image.asset(
                                  "assets/fb.png",
                                  width: 25,
                                )),

                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 40),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Divider(
                                    color: grey,
                                  )),
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 30),
                                      child: Text(
                                        "OR",
                                        style: TextStyle(color: black),
                                      )),
                                  Expanded(
                                      child: Divider(
                                    color: grey,
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Email
                      CustomTextField(
                        password: false,
                        hint: "Email",
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      //Username
                      CustomTextField(
                        password: false,
                        hint: "Username",
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      //Password
                      CustomTextField(
                        hint: "Password",
                      ),

                      //Agreement?
                      CheckboxListTile(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "I agree to the Terms of Use and Privacy Policy",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),

                      //Register Button
                      FormButton(text: "Register"),

                      //Already have an account
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account? "),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Login()));
                                },
                                child: Text("Login",
                                    style: TextStyle(color: primaryColor))),
                          ],
                        ),
                      ),

                      //About
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "About | Terms of Use",
                          style: TextStyle(color: grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
