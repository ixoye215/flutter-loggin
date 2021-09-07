import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixoye_login/components/already_have_account.dart';
import 'package:ixoye_login/components/rounded_button.dart';
import 'package:ixoye_login/components/rounded_input_field.dart';
import 'package:ixoye_login/components/rounded_password_field.dart';
import 'package:ixoye_login/constants.dart';
import 'package:ixoye_login/screens/login/login_screen.dart';
import 'package:ixoye_login/screens/registro/components/body.dart';

import 'components/or_divider.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Registro",
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                SizedBox( height: size.height*0.03,),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  height: size.height * 0.35,
                ),
                SizedBox( height: size.height*0.03,),
                RoundedInputField(
                  hintText: "Your Email", 
                  onChanged: (value){}
                ),
                RoundedPasswordField(
                  onChanged: (value){}
                ),
                RoundedButton(
                  text: "Registrar", 
                  press: (){}
                ),
                SizedBox( height: size.height*0.01,),
                AlreadyHaveAnAccount(
                  login: false,
                  press: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        }
                      )
                    );
                  },
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(
                      iconSrc: "assets/icons/facebook.svg",
                      press: (){},
                    ),
                    SocialIcon(
                      iconSrc: "assets/icons/google-plus.svg",
                      press: (){},
                    ),
                    SocialIcon(
                      iconSrc: "assets/icons/twitter.svg",
                      press: (){},
                    ),
                  ],
                ),
                SizedBox( height: size.height*0.01,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function()? press;
  
  const SocialIcon({
    Key? key, 
    this.iconSrc="", 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}

