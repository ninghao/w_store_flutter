import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '输入登录用户名',
              helperText: '',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '输入登录用户密码',
              helperText: '',
            ),
            obscureText: true,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 32.0,
            ),
            width: double.infinity,
            child: RaisedButton(
              child: Text(
                '登录',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18.0,
                ),
              ),
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              splashColor: Colors.white12,
              padding: EdgeInsets.all(16.0),
              elevation: 0.0,
            ),
          ),
          Container(
            width: double.infinity,
            child: FlatButton(
              child: Text(
                '注册新帐号',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              onPressed: () {},
              padding: EdgeInsets.all(12.0),
            ),
          ),
        ],
      ),
    );
  }
}
