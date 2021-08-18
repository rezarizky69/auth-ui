import 'package:flutter/material.dart';
import 'package:flutter_authentication_ui/pages/login/login_screen.dart';
import 'package:flutter_authentication_ui/pages/signup/components/background.dart';
import 'package:flutter_authentication_ui/pages/signup/components/or_divider.dart';
import 'package:flutter_authentication_ui/pages/signup/components/social_icon.dart';
import 'package:flutter_authentication_ui/widgets/already_have_an_account_check.dart';
import 'package:flutter_authentication_ui/widgets/rounded_button.dart';
import 'package:flutter_authentication_ui/widgets/rounded_input_field.dart';
import 'package:flutter_authentication_ui/widgets/rounded_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup_fix.svg",
              height: size.height * 0.30,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg", 
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
