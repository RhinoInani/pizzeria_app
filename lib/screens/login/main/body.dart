import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizzeria_app/constants.dart';
import 'package:pizzeria_app/screens/home/homeScreen.dart';
import 'package:pizzeria_app/screens/login/main/components/loginHeading.dart';
import 'package:pizzeria_app/screens/login/main/components/loginOrCreateButton.dart';
import 'package:pizzeria_app/screens/login/main/components/textForm.dart';

class LoginBody extends StatelessWidget {
  final bool loginOrCreate;
  final _passwordController =
      TextEditingController(); //this line is outside the build() method

  LoginBody({Key key, this.loginOrCreate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    final List<String> _errors = [""];
    InputDecoration _buildInputDecoration(
      String hint,
    ) {
      return InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: hint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: size.width * 0.1,
            vertical: size.height * 0.03,
          ),
          hintStyle: TextStyle(color: kTextLightColor),
          errorStyle: TextStyle(color: Color.fromRGBO(248, 218, 87, 1)),
          errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(248, 218, 87, 1))),
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(248, 218, 87, 1))));
    }

    Widget _buildEmail() {
      return TextFormField(
        validator: (value) => !isEmail(value)
            ? "Sorry, we do not recognize this email address"
            : null,
        style: TextStyle(
          color: kTextColor,
        ),
        decoration: _buildInputDecoration("Email"),
      );
    }

    Widget _buildPassword() {
      return TextFormField(
        obscureText: true,
        controller: _passwordController,
        validator: (value) => value.length <= 6
            ? "Password must be 6 or more characters in length"
            : null,
        style: TextStyle(
          color: kTextColor,
        ),
        decoration: _buildInputDecoration("Password"),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
            vertical: size.height * 0.03,
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              loginHeading(size: size),
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // Padding(
                            //   padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                            //   child: _buildEmail(),
                            // ),
                            // Padding(
                            //   padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                            //   child: _buildPassword(),
                            // ),
                            textForm(
                              size: size,
                              icon: Icons.mail,
                              hidden: false,
                              type: "Email",
                              keyboardInput: TextInputType.emailAddress,
                              validator: (value) {
                                if (value.isNotEmpty()) {
                                  return null;
                                } else {
                                  return "Enter valid email";
                                }
                              },
                            ),
                            textForm(
                              size: size,
                              icon: Icons.lock,
                              hidden: true,
                              type: "Password",
                              keyboardInput: null,
                              validator: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  loginOrCreateButton(
                    size: size,
                    loginOrCreate: loginOrCreate,
                    text1: "Login",
                    text2: "Create Account",
                    press: () {
                      loginOrCreate == false
                          ? Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }))
                          : Navigator.of(context)
                              .pop(MaterialPageRoute(builder: (context) {
                              return LoginBody(
                                loginOrCreate: true,
                              );
                            }));
                    },
                  ),
                ],
              ),
              loginOrCreateButton(
                  size: size,
                  loginOrCreate: loginOrCreate,
                  press: () {
                    loginOrCreate == false
                        ? Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                            return LoginBody();
                          }))
                        : Navigator.of(context)
                            .pop(MaterialPageRoute(builder: (context) {
                            return LoginBody(
                              loginOrCreate: true,
                            );
                          }));
                  },
                  text1: "Create Account",
                  text2: "Back to Login")
            ],
          ),
        ),
      ),
    );
  }

  bool isEmail(String value) {
    String regex =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(regex);

    return value.isNotEmpty && regExp.hasMatch(value);
  }
}

class form extends StatefulWidget {
  const form({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.size,
    this.error,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final Size size;
  final error;

  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Column(
        children: [
          textForm(
              size: widget.size,
              icon: Icons.mail,
              hidden: false,
              type: "Email",
              keyboardInput: TextInputType.emailAddress,
              validator: (value) {}),
          textForm(
            size: widget.size,
            icon: Icons.lock,
            hidden: true,
            type: "Password",
            keyboardInput: null,
            validator: (value) {},
          ),
        ],
      ),
    );
  }
}
