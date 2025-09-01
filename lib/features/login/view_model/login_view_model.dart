
import 'package:activity_tracker_app/features/login/model/login_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel  extends ChangeNotifier{

Future<LoginResponse> login( String email, String password) async {
    // Implement login logic here, e.g., using Firebase Authentication

try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
       final token = credential.credential?.accessToken ?? "";
       SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userToken', token);
          return LoginResponse(success: true, message: "User logged in successfully");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        return LoginResponse(success: false, message: "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        return LoginResponse(success: false, message: "Wrong password provided for that user.");
      }
    }
    return LoginResponse(success: false, message: "Unknown error occurred");
}

}