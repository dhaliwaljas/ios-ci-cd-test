import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weaver/logic/providers/auth_provider.dart';

enum AuthMode { Signup, Login }

class AuthScreen extends StatefulWidget {
  static const NAVIGATION_ROUTE = '/authScreen';

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _authMode = AuthMode.Login;

  final _formKey = GlobalKey<FormState>();

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Spacer(),
            Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    initialValue: 'a',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    onSaved: (data) {
                      email = data;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    initialValue: 'b',
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    onSaved: (data) {
                      password = data;
                    },
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: _authMode == AuthMode.Login
                        ? RaisedButton(
                            child: Text('Login'),
                            onPressed: () {
                              _formKey.currentState.save();
                              authProvider.login(email, password);
                              print('===> loggining in with email:  ' +
                                  email.toString());
                            })
                        : RaisedButton(
                            child: Text('SignUp'),
                            onPressed: () {
                              _formKey.currentState.save();
                              authProvider.signUp(email, password);
                              print('===> signing up with email:  ' +
                                  email.toString());
                              setState(() {
                                _authMode = AuthMode.Login;
                              });
                            }),
                  ),
                ],
              ),
            ),
            _authMode == AuthMode.Signup
                ? FlatButton(
                    child: Text('Existing User?'),
                    color: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _authMode = AuthMode.Login;
                      });
                    },
                  )
                : FlatButton(
                    child: Text('New User?'),
                    color: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _authMode = AuthMode.Signup;
                      });
                    },
                  ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
