import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue = '';
  String _passwordValue = '';
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      //<Widget> is not mandatory
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            //E-Mail text input
            TextField(
              decoration: InputDecoration(labelText: 'E-Mail'),
              onChanged: (String value) {
                setState(() {
                  _emailValue = value;
                });
              },
              keyboardType: TextInputType.emailAddress,
            ),

            // Password text input
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (String value) {
                setState(() {
                  _passwordValue = value;
                });
              },
              obscureText: true,
            ),
            //Switch
            SwitchListTile(
              value: _acceptTerms,
              onChanged: (bool value) {
                setState(() {
                 _acceptTerms = value; 
                });
              },
              title: Text('Accept Terms'),
            ),
            SizedBox(
              height: 10.0,
            ),
            // Login button
            RaisedButton(
              child: Text('LOGIN'),
              onPressed: () {
                print(_emailValue);
                print(_passwordValue);
                Navigator.pushReplacementNamed(context, '/products');
              },
            ),
          ],
        ),
      ),
    );
  }
}
