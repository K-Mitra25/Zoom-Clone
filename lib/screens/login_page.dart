import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_method.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final AuthMethods _authMethods=AuthMethods();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or Join a Meeting',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 38.0),
            child: Image.asset('assets/images/onboarding.jpg'),
          ),
          CustomButton(text: 'Login',onPressed: () async{
            bool res=await _authMethods.signInWithGoogle(context);
            if(res)
            {
              Navigator.pushNamed(context, '/home');
            }
           },)
        ],
      ),
    );
  }
}
