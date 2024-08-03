import 'package:flutter/material.dart';
import 'package:my_app/Pages/Home_Page.dart';
import 'package:my_app/Pages/Sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 500,
          width: 350,
          margin: EdgeInsets.all(25),
          padding: EdgeInsetsDirectional.all(25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome Back'),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.person)),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Pasward',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.password)),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Home_Page()));
                  },
                  child: Text('Login')),
              TextButton(onPressed: () {}, child: Text('Forgot Passward?')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpPage()));
                      },
                      child: Text('Register')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
