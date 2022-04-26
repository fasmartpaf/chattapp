import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            color: Colors.white,
            height: 900,
            width: 400,
            child: Column(
              children: [
                Text('ChattApp',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 40),),
                SizedBox(height: 20,),
                Image.asset('asset/chatt.png'),

                SizedBox(height: 150,),
                TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontStyle: FontStyle.italic),
                      hintText: 'Email',
                      hintStyle:TextStyle(fontStyle: FontStyle.italic) ,
                      border: OutlineInputBorder(),
                    ),
                  ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontStyle: FontStyle.italic),
                    hintText: 'Password',
                    hintStyle:TextStyle(fontStyle: FontStyle.italic) ,
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,

                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: FlatButton(

                    onPressed: () {
                      Navigator.push(context,
                          PageTransition(type: PageTransitionType.rightToLeft,
                              alignment:Alignment.center,duration: Duration(seconds: 1),
                              child:LoginPage() )
                      );

                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
