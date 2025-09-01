import 'package:activity_tracker_app/constants/app_colors.dart';
import 'package:activity_tracker_app/features/login/view_model/login_view_model.dart';
import 'package:activity_tracker_app/routes/app_route_names.dart';
import 'package:activity_tracker_app/validator/reg_exp.dart';
import 'package:activity_tracker_app/widgets/app_textfield.dart';
import 'package:activity_tracker_app/widgets/button_widget.dart';
import 'package:activity_tracker_app/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

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
                    TextButtonWidget(
                        buttonTitle: "Sign Up",
                        onPressed: () {
                          Navigator.pushNamed(context,AppRouteNames.signup);
                        })
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  void loginAction() async {
    if (_formKey.currentState!.validate()) {
      final loginVm = Provider.of<LoginViewModel>(context, listen: false);
      final loginData =
          await loginVm.login(emailController.text, passwordController.text);
      if (loginData.success) {
        // Navigate to another screen or show success message
        Fluttertoast.showToast(
            msg: loginData.message,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        Fluttertoast.showToast(
            msg: loginData.message,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } else {
      print("Form is invalid");
    }
  }
}
