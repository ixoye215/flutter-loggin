import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixoye_login/components/already_have_account.dart';
import 'package:ixoye_login/components/rounded_button.dart';
import 'package:ixoye_login/components/rounded_input_field.dart';
import 'package:ixoye_login/components/rounded_password_field.dart';
import 'package:ixoye_login/components/text_field_container.dart';
import 'package:ixoye_login/constants.dart';
import 'package:ixoye_login/screens/login/components/background.dart';
import 'package:ixoye_login/screens/registro/registro_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle( fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height*0.03,),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height*0.3,
            ),
            SizedBox(height: size.height*0.03,),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value){},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              text: "LOGIN", 
              press: (){}
            ),
            SizedBox(height: size.height*0.03,),
            AlreadyHaveAnAccount(
              press: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegistroScreen();
                    }
                  )
                );
              },
            ),
            SizedBox(height: size.height*0.03,),
          ],
        ),
      ),
    );
  }
}




