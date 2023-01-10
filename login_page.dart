import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key,required this.showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:
      SafeArea(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://cdn-icons-png.flaticon.com/512/2272/2272898.png',height: 100,width: 100,),
          SizedBox(height: 60,),

          //Hello AGAIN
          Text('Welcome to',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
            SizedBox(height: 10,),
            Text('CryptoSolution',style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold,
            )),
            SizedBox(height: 50,),



          //EMAIL TEXTFIELD
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
          child:Padding(
            padding: const EdgeInsets.only(left:20.0),
           child:
            TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
              hintText:'Email',
          )
        ),
        ),
      ),
      ),


         SizedBox(height: 10,),

          //PASSWORD TEXTFIELD

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child:
                  TextField(
                    obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:'Password',
                      )
                  ),
                ),
              ),
            ),

SizedBox(height: 40,),

          //SIGN-IN BUTTON
Padding(
  padding: const EdgeInsets.symmetric(horizontal:25.0),
  child:   Container(
    padding: EdgeInsets.all(20),
 decoration: BoxDecoration(color: Colors.deepPurpleAccent,
 borderRadius: BorderRadius.circular(12)),



    child: Center(

      child: Text('Sign-In',
        style: TextStyle(color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.bold),

    ),

  )),
),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(

                  child: Text('Sign-up for a new Account',
                    style: TextStyle(color: Colors.blue,
                        fontWeight: FontWeight.bold,
                    fontSize: 15),
                  ),
                ),

              ],
            ),
          ]),
      )),
    );
  }
}

