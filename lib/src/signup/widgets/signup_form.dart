import 'package:flutter/material.dart';
import 'package:w_store_flutter/src/signup/models/signup_model.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  SignupModel _formData = SignupModel();
  bool _autovalidate = false;

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print('Name: ${_formData.name}');
      print('Password: ${_formData.password}');
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
  }

  String _validateName(String value) {
    if (value.isEmpty) {
      return '请输入用户名。';
    }

    return null;
  }

  String _validatePassword(String value) {
    if (value.isEmpty) {
      return '请输入密码。';
    }

    return null;
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
              hintText: '输入注册用户名',
              helperText: '',
            ),
            onSaved: (String value) {
              _formData.name = value;
            },
            autovalidate: _autovalidate,
            validator: _validateName,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '输入注册用户密码',
              helperText: '',
            ),
            obscureText: true,
            onSaved: (String value) {
              _formData.password = value;
            },
            autovalidate: _autovalidate,
            validator: _validatePassword,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 32.0,
            ),
            width: double.infinity,
            child: RaisedButton(
              child: Text(
                '注册新用户',
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
                '已有帐号，点击登录 →',
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
