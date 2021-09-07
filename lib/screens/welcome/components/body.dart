import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixoye_login/components/rounded_button.dart';
import 'package:ixoye_login/constants.dart';
import 'package:ixoye_login/screens/login/login_screen.dart';
import 'package:ixoye_login/screens/registro/registro_screen.dart';
import 'package:ixoye_login/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          BounceInDown(
            duration: Duration(seconds: 1),
            child: Text(
              'BIENVENIDOS A MENUS',
              style: TextStyle( fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox( height: size.height*0.03,),
          BounceInDown(
            duration: Duration(seconds: 2),
            child: SvgPicture.asset("assets/icons/chat.svg", height: size.height*0.45,)
          ),
          SizedBox( height: size.height*0.05,),
          BounceInLeft(
            duration: Duration(seconds: 2),
            child: RoundedButton(
              text: "LOGIN",
              press: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    }
                  )
                );
              },
            ),
          ),
          BounceInRight(
            duration: Duration(seconds: 2),
            child: RoundedButton(
              text: "REGISTER",
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
              color: kPrimaryLightColor,
              textColor: Colors.black,
            ),
          ),
        ],
      ),
    ),);
  }
}



