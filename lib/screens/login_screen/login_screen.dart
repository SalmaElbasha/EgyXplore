import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< Updated upstream
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          toolbarHeight: 100.0,
          leading: Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
=======
      appBar: CustomBackButton(
        onBackTap: () {Get.back();},
>>>>>>> Stashed changes
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 274,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                  child: SizedBox(
                    width: 274,
                    height: 61,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: const TextStyle(
                          color: Colors.brown,
                          fontSize: 16,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.brown,
                              width: 2
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.brown,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.brown,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: SizedBox(
                      width: 274,
                      height: 61,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: const TextStyle(
                            color: Colors.brown,
                            fontSize: 16,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.brown,
                                width: 2
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.brown,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.brown,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){},
                       child: Text("Forget Password?",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF565656),
                          decoration: TextDecoration.underline,
              
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
            Column(
              children: [
                Container(
                  width: 274,
                  height: 52,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Color(0xFFC3AC8E), width: 2),
                    color: Color(0xFFC3AC8E),
                  ) ,
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF8B5843),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),


        ],
      ),
    );
  }
}
