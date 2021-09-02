import 'package:convre/Constant/buttons.dart';
import 'package:convre/Constant/colors.dart';
import 'package:convre/Constant/form_field.dart';
import 'package:convre/Screens/new_password.dart';
import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
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
                      //Header text
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "Reset Password",
                              style: TextStyle(
                                color: black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5,),

                            Text(
                              "Enter your username or email and we'll send you a link to get back into your account.",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      //Email
                      CustomTextField(password: false, hint: "Email/Username",),

                      const SizedBox(height: 20,),
                      //Reset Button
                      FormButton(text: "Submit"),

                      //Don't have an account
                      Container(
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => NewPassword()));
                            },
                            child: Text("Have Code?", style: TextStyle(color: primaryColor))),
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
