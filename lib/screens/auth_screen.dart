import 'package:n3_tassi/core/constants/colors.dart';
import 'package:n3_tassi/core/widgets/buttons.dart';
import 'package:n3_tassi/data/firebase/auth_service.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: MyColors.orange,
        centerTitle: true,
        title: Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: email,
            ),
            TextFormField(
              controller: password,
            ),
            CustomFlatButton(
              color: MyColors.green,
              text: 'Entrar',
              onPressed: () {
                final user = AuthService().signInWithEmailAndPassword(
                    email: email.text, password: password.text);
                print('ADOIEWHQFIOHWOIHJEWF -> $user');
              },
            ),
            CustomFlatButton(
              color: MyColors.orange,
              text: 'Registrar',
              onPressed: () {
                AuthService().signUpWithEmailAndPassword(
                    email: email.text, password: password.text);

                // user != null ? Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(user: user))) : (){};
              },
            ),
            CustomFlatButton(
                color: MyColors.wine,
                text: 'Entrar com Google',
                onPressed: () {
                  AuthService().signInWithGoogle();
                })
          ],
        ),
      ),
    );
  }
}
