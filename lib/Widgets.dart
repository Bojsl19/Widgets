




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Strings/Strings.dart';














//This Widget contain image of login and text (login)
class Container_image_of_loginpage extends StatelessWidget {
  const Container_image_of_loginpage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: pColorloginpage,
      height: MediaQuery.of(context).size.height * 0.30,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor:
              Theme.of(context).primaryColor,
              radius: 60,
              child: Icon(
                Icons.flight_takeoff,
                size: 80,
              ),
            ),
            Widget_Text(text: "Login")
          ],
        ),
      ),
    );
  }
}




//This Widget contain Edit text (Email , Password) & Button to login
class Expanded_inputuser_loginpage extends StatelessWidget {
  const Expanded_inputuser_loginpage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(
          children: <Widget>[
            widget_edittext_email(editText_mail: "Email"),
            SizedBox(height: 20),
            widget_edittext_password(),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: OutlinedButton(
                  onPressed: () {},

                  // padding: EdgeInsets.all(16),
                  // color: Theme.of(context).primaryColor,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius:
                  //   BorderRadius.circular(20),
                  // ),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Widget_Text( text: 'Login :)'),
                      Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: pColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//This Widget contain text
class Widget_Text extends StatelessWidget {
  const Widget_Text({
    Key? key,
     this.text,
  }) : super(key: key);

  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text ?? 'basil',
        style: TextStyle(
          color: textColor,
          fontSize: 20,
        ),
      ),
    );
  }
}


//This Widget contain Edit text Password
class widget_edittext_password extends StatelessWidget {
  const widget_edittext_password({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 3,
          ),
        ),
        prefixIcon: IconTheme(
          data: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          child: Icon(Icons.lock),
        ),
      ),
    );
  }
}


//This Widget contain Edit text Email
class widget_edittext_email extends StatelessWidget {
  const widget_edittext_email({
    Key? key,
    required this.editText_mail,
  }) : super(key: key);
final String editText_mail;
  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      decoration: InputDecoration(
        hintText: editText_mail,
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 3,
          ),
        ),
        prefixIcon: IconTheme(
          data: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          child: Icon(Icons.email),
        ),
      ),
    );
  }
}
