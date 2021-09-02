import 'package:convre/Constant/buttons.dart';
import 'package:convre/Constant/colors.dart';
import 'package:convre/Constant/form_field.dart';
import 'package:convre/Screens/register.dart';
import 'package:convre/Screens/reset.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    primary: false,
                    shrinkWrap: true,
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
                                  Expanded(child: Divider(color: grey,)),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 30),
                                      child: Text("OR",style: TextStyle(color: black),)),
                                  Expanded(child: Divider(color: grey,)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      ///
                      //Email
                      CustomTextField(
                        password: false,
                        hint: "Email/Username",
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      //Password
                      CustomTextField(
                        hint: "Password",
                      ),

                      //Forgot password?
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Reset()));
                            },
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),

                      //Login Button
                      FormButton(text: "Login"),

                      //Don't have an account
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? "),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Register()));
                                },
                                child: Text("Register",
                                    style: TextStyle(color: primaryColor))),
                          ],
                        ),
                      ),

                      //About
                      Container(
                        margin: const EdgeInsets.only(bottom: 40),
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
