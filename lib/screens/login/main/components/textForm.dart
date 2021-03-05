import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizzeria_app/constants.dart';

class textForm extends StatefulWidget {

  textForm({
    Key key,
    @required this.size, this.icon, this.type, this.hidden, this.validator, this.keyboardInput,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String type;
  final bool hidden;
  final validator;
  final keyboardInput;

  @override
  _textFormState createState() => _textFormState();
}

class _textFormState extends State<textForm> {
  final _passwordController = TextEditingController();
  Future<void> _alertDialogBuilder() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Error"),
          content: Container(
            child: Text("random text for rn"),
          ),
          actions: [
            FlatButton(onPressed: (){}, child: Text("Close Button"))
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: widget.size.height * 0.01),
      child: TextFormField(
        keyboardType: widget.keyboardInput,
        obscureText: widget.hidden,
        validator: widget.validator,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(widget.icon),
          ),
          labelText: "${widget.type}",
          hintText: "Enter your ${widget.type.toLowerCase()}",
          labelStyle: TextStyle(
            color: kTextColor,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(
            horizontal: widget.size.width * 0.1,
            vertical: widget.size.height * 0.03,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
          errorStyle: TextStyle(color: Colors.red),
          errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color:  Colors.red,
              )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color:  Colors.red,
              ),
          ),
        ),
      ),
    );
    // InputDecoration _buildInputDecoration(String hint,) {
    //   return InputDecoration(
    //       focusedBorder: UnderlineInputBorder(
    //           borderSide: BorderSide(color: Color.fromRGBO(252, 252, 252, 1))),
    //       hintText: hint,
    //       enabledBorder: UnderlineInputBorder(
    //           borderSide: BorderSide(color: Color.fromRGBO(151, 151, 151, 1))),
    //       hintStyle: TextStyle(color: Color.fromRGBO(252, 252, 252, 1)),
    //       errorStyle: TextStyle(color: Color.fromRGBO(248, 218, 87, 1)),
    //       errorBorder: UnderlineInputBorder(
    //           borderSide: BorderSide(color:  Color.fromRGBO(248, 218, 87, 1))),
    //       focusedErrorBorder: UnderlineInputBorder(
    //           borderSide: BorderSide(color:  Color.fromRGBO(248, 218, 87, 1))));
    // }
    // Widget _buildEmail() {
    //   return TextFormField(
    //     validator: (value) => !isEmail(value) ? "Sorry, we do not recognize this email address" : null,
    //     style: TextStyle(
    //         color: Color.fromRGBO(252, 252, 252, 1), fontFamily: 'RadikalLight'),
    //     decoration: _buildInputDecoration("Email"),
    //   );
    // }
    // Widget _buildPassword() {
    //   return TextFormField(
    //     obscureText: true,
    //     controller: _passwordController,
    //     validator: (value) =>
    //     value.length <= 6 ? "Password must be 6 or more characters in length" : null,
    //     style: TextStyle(
    //         color: Color.fromRGBO(252, 252, 252, 1), fontFamily: 'RadikalLight'),
    //     decoration:
    //     _buildInputDecoration("Password"),
    //   );
    // }
  }
}