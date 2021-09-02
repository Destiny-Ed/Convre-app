import 'package:convre/Constant/buttons.dart';
import 'package:convre/Constant/colors.dart';
import 'package:convre/Constant/form_field.dart';
import 'package:convre/Screens/login.dart';
import 'package:flutter/material.dart';


class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SafeArea(
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
                      //Header Text
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "New Password",
                              style: TextStyle(
                                color: black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5,),

                            Text(
                              "Enter the code you received and a new password",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),

                      //Code
                      CustomTextField(password: false, hint: "Code",),
                      const SizedBox(height: 20,),

                      //Password
                      CustomTextField(hint: "Password",),

                      const SizedBox(height: 20,),


                      //Submit Button
                      FormButton(text: "Submit"),

                      //Login with new account account
                      Container(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> Login()));
                        }, child: Text("Login", style: TextStyle(color: primaryColor),)),
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
