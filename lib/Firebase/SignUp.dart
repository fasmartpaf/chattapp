import 'package:chattapp/Models/usermodels.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Login Firebase.dart';
class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController Emailcontroller=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController Confrempasswordcontroller=TextEditingController();
void SignUP1()async{
  try{
    UserCredential Credential =await  FirebaseAuth.instance.createUserWithEmailAndPassword(email: Emailcontroller.text,
  password: passwordController.text);
    if(Credential!=null){
      String ? uid=Credential.user!.uid;
      UserModels newuser = UserModels(
        email: Emailcontroller.text,
         uid: uid,
        fullname:'',
        profilepic: ''

      );
       await FirebaseFirestore.instance.collection('Users').doc(uid).set(
          newuser.ToMap()
      );
    }
}on FirebaseException catch(ex){
    print(ex.code.toString());
  }
  }

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
                  controller: Emailcontroller,
                  onChanged: (value){
                    value =Emailcontroller.text;
                  },
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
                  onChanged: (value){
                    value=passwordController.text;
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontStyle: FontStyle.italic),
                    hintText: 'Password',
                    hintStyle:TextStyle(fontStyle: FontStyle.italic) ,
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: Confrempasswordcontroller,
                  onChanged: (value){
                    value=Confrempasswordcontroller.text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
                    labelStyle: TextStyle(fontStyle: FontStyle.italic),
                    hintText: 'Confirm password',
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
                      SignUP1();
                      // Navigator.push(context,
                      //     PageTransition(type: PageTransitionType.rightToLeft,
                      //         alignment:Alignment.center,duration: Duration(seconds: 1),
                      //         child:LoginPage() )
                      // );

                    },
                    child: Text(
                      'SignIn',
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
