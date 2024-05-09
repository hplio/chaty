import 'package:chaty/chat_page.dart';
import 'package:flutter/material.dart';
import 'button_data.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const id = 'loginpage';

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool indicator = false;
  late String loginUserEmail;
  late String loginUserPassword;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // ignore: prefer_typing_uninitialized_variables
  late final user;
  final logInController_1 = TextEditingController();
  final logInController_2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: indicator,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              TextField(
                  controller: logInController_1,
                  textAlign: TextAlign.center,
                  style: kinputtextstyle,
                  onChanged: (value) {
                    loginUserEmail = value;
                  },
                  decoration: kinputdecoration.copyWith(
                    hintText: 'Enter your email',
                  )),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                  controller: logInController_2,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: kinputtextstyle,
                  onChanged: (value) {
                    loginUserPassword = value;
                  },
                  decoration: kinputdecoration.copyWith(
                    hintText: 'Enter your password',
                  )),
              const SizedBox(
                height: 24.0,
              ),
              Button(
                data: 'Log In',
                colour: Colors.lightBlue,
                onpress: () async {
                  try {
                    setState(() {
                      indicator = true;
                    });
                    user = await _auth.signInWithEmailAndPassword(
                        email: loginUserEmail, password: loginUserPassword);
                    if (user != null) {
                      if (!mounted) return;
                      setState(() {
                        indicator = false;
                      });
                      Navigator.pushNamed(context, ChatScreen.id);
                      logInController_1.clear();
                      logInController_2.clear();
                    }
                  } catch (e) {
                    setState(() {
                      indicator = false;
                    });
                    if (!context.mounted) return;
                    alertLoginSignin(context, 'Opps!! something goes wrong')
                        .show();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Alert alertLoginSignin(BuildContext context, Object e) {
    return Alert(
      context: context,
      type: AlertType.error,
      title: " ALERT",
      desc: "$e",
      buttons: [
        DialogButton(
          color: Colors.redAccent,
          onPressed: () => Navigator.pop(context),
          width: 120,
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    );
  }
}
