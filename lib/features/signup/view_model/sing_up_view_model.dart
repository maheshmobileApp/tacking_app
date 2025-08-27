
import 'package:activity_tracker_app/features/signup/model/sign_up_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SingUpViewModel  with ChangeNotifier{


   Future<SignUpResponse> signUp( String email, String password) async {
    // Implement sign-up logic here, e.g., using Firebase Authentication

    try {
      // Simulate a network call
       final userData = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      // On success, you might want to notify listeners or update state
      print('User signed up with email: $email');
      return SignUpResponse(success: true, message: "User signed up successfully");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
              return SignUpResponse(
            success: false, message: "The password provided is too weak.");

      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
              return SignUpResponse(
            success: false, message: "The account already exists for that email.");
      }
    }
    catch (e) {
      // Handle errors here
      print('Sign-up failed: $e');
      return SignUpResponse(success: false, message: e.toString());
    }
    return SignUpResponse(success: false, message: "Unknown error occurred");
   }

}

/*
success - true  
messasge -> 
 */
