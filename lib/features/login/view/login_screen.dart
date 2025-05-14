import 'package:activity_tracker_app/constants/app_colors.dart';
import 'package:activity_tracker_app/validator/reg_exp.dart';
import 'package:activity_tracker_app/widgets/app_textfield.dart';
import 'package:activity_tracker_app/widgets/button_widget.dart';
import 'package:activity_tracker_app/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Login',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 36,
                  color: AppColors.primary
                ),),
              ),
              const SizedBox(height: 40,),
              AppTextfield(
                hintText: 'Email',
                prefixIcon: Image.asset("assets/Message.png"),
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (checkEmailValidation(value) == false) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
                            const SizedBox(
                height: 20,
              ),

              AppTextfield(
                hintText: 'Password',
                controller: passwordController,
                prefixIcon: Image.asset("assets/Lock.png"),
                suffixIcon: Icon(Icons.visibility),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (passwordValidation(value) == false) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButtonWidget(buttonTitle: "Forgot Password ?", onPressed: (){})),
              ButtonWidget(buttonTitle: "Login", onPressed: (){
                loginAction();
              }),
           SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Divider(
                      thickness: 1,
                      height: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or With"),
                  ),
                  Expanded(
                    flex: 1,
                    child: Divider(
                                          height: 2,
                    
                      thickness: 1,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?"),
                    TextButtonWidget(buttonTitle: "Sign Up", onPressed: (){})
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  void loginAction(){
    if (_formKey.currentState!.validate()) {
      print("Form is valid");
    } else {
      print("Form is invalid");
    }
  }
}
