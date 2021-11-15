import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final  _passwordController = TextEditingController();
  class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _unfocusedColor = Colors.grey[600];
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  @override
  void initState() {
  super.initState();
  _usernameFocusNode.addListener(() {
  setState(() {
  //Redraw so that the username label reflects the focus state
  });
  });
  _passwordFocusNode.addListener(() {
  setState(() {
  //Redraw so that the password label reflects the focus state
  });
  });
  }
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                Text(
                  'SHRINE',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            )

            const SizedBox(height: 120.0),
            // Remove filled: true values (103)
            TextField(
            controller: _usernameController,
            decoration: InputDecoration(
            labelText: 'Username',
            labelStyle: TextStyle(
            color: _usernameFocusNode.hasFocus
            ? Theme.of(context).colorScheme.secondary
                : _unfocusedColor),
            ),
            focusNode: _usernameFocusNode,
            ),
            const SizedBox(height: 12.0),
            TextField(
            controller: _passwordController,
            decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(
            color: _passwordFocusNode.hasFocus
            ? Theme.of(context).colorScheme.secondary
                : _unfocusedColor),
            ),
            focusNode: _passwordFocusNode,
            ),
            // TODO: Add button bar (101)
            ButtonBar(
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                // TODO: Add buttons (101)
                TextButton(
                  child: const Text('CANCEL'),
                  style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.secondary,
                  ),
                  shape: MaterialStateProperty.all(
                    const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                ElevatedButton(
                  child: const Text('NEXT'),
                    style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8.0),
                    shape: MaterialStateProperty.all(
                    const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    ),
                    ),

                              ],
            ),
            
          ],
          
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)