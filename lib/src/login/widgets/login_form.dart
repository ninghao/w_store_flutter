import 'package:flutter/material.dart';
import 'package:w_store_flutter/src/login/models/login_model.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  LoginModel _formData = LoginModel();

  void _submitForm() {
    _formKey.currentState.save();
    print('Name: ${_formData.name}');
    print('Password: ${_formData.password}');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '输入登录用户名',
              helperText: '',
            ),
            onSaved: (String value) {
              _formData.name = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '输入登录用户密码',
              helperText: '',
            ),
            obscureText: true,
            onSaved: (String value) {
              _formData.password = value;
            },
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
              onPressed: _submitForm,
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
