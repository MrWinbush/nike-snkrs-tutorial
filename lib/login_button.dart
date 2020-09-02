import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  String _text;
  Color _color;
  Color _textColor;
  Color borderColor;

  LoginButton(this._text, this._color, this._textColor, {this.borderColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 55,
      minWidth: 150,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), 
        side: BorderSide(color: this.borderColor)
      ),
      child: FlatButton(
        child: Text(this._text,
          style: TextStyle(color: this._textColor)
        ), 
        color: this._color,
        onPressed: (){
        print("Login");
      }),
    );
  }
}