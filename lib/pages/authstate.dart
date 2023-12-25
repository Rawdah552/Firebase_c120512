import 'package:flutter/material.dart';
import 'package:mylogin_191/pages/homepage.dart';
import 'package:mylogin_191/pages/login.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

// import 'package:firebase_auth/firebase_auth.dart';
// import com.google.firebase.auth.FirebaseAuth;

class AuthState extends StatelessWidget {
  const AuthState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,user){
          if(user.hasData){
            return HomePage();
          }else{
            return LoginPage();
          }
        },
        ),
    );
  }
}