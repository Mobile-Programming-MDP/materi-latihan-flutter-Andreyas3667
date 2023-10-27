import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //TODO:1 Deklarasikan Variabel
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSignedIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO:2 Pasang AppBar
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      //TODO:3 Pasang Body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                //TODO: 4.Atur mainAxisAligment dan crossAxisAligment
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //TODO: 5.Pasang TextFormField Username
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  //TODO: 6.Pasang TextFormField Password
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      errorText: _errorText.isNotEmpty ? _errorText : null,
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    obscureText: _obscurePassword,
                  ),
                  //TODO: 7.Pasang TextFormField Sign In
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: () {}, child: Text('Sign In')),
                  //TODO : 8. Pasang TextButton Sign Up
                  SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: Text('Belum Punya Akun? Daftar Di Sini')),
                  RichText(
                      text: TextSpan(
                          text: 'Belum Punya Akun?',
                          style:
                              TextStyle(fontSize: 16, color: Colors.deepPurple),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Daftar Disini',
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              fontSize: 16),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        )
                      ]))
                ],
              )),
        ),
      ),
    );
  }
}
