import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w_store_flutter/src/signup/models/signup_model.dart';
import 'package:w_store_flutter/src/signup/providers/signup_service.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  SignupModel _formData = SignupModel();
  bool _autovalidate = false;
  SignupService _signupService;

  void _submitForm() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print('Name: ${_formData.name}');
      print('Password: ${_formData.password}');

      try {
        final user = await _signupService.signup(_formData);
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('成功注册用户：${user.name}'),
          ),
        );
      } catch (error) {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text(error),
          ),
        );
      }
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
    _signupService = Provider.of<SignupService>(context);

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '输入注册用户名',
              helperText: '',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              hintStyle: TextStyle(
                color: Colors.white38,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.white70,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.white,
                ),
              ),
            ),
            onSaved: (String value) {
              _formData.name = value;
            },
            autovalidate: _autovalidate,
            validator: _validateName,
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '输入注册用户密码',
              helperText: '',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              hintStyle: TextStyle(
                color: Colors.white38,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.white70,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.white,
                ),
              ),
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
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              onPressed: _submitForm,
              color: Colors.white,
              splashColor: Colors.black12,
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
                  color: Colors.white70,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.all(12.0),
            ),
          ),
        ],
      ),
    );
  }
}
