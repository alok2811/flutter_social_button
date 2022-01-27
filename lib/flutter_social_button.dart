library flutter_social_button;
import 'package:flutter/material.dart';
import 'package:flutter_social_button/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton{

 static Widget facebookButton({required VoidCallback onTap, String title = "Login With Facebook",Color backgroundColor = facebookColor, Color iconColor= Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: ElevatedButton.icon(
          onPressed: onTap,
          icon:  Icon(FontAwesomeIcons.facebookF, color: iconColor,),
          label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          primary: backgroundColor,
          shape:   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
      ),
    );
  }

 static Widget googleButton({required VoidCallback onTap, String title = "Login With Google",Color backgroundColor = googleColor, Color iconColor= Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon:  Icon(FontAwesomeIcons.google, color: iconColor,),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          primary: backgroundColor,
          shape:   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
      ),
    );
  }

 static Widget twitterButton({required VoidCallback onTap, String title = "Login With Twitter",Color backgroundColor = twitterColor, Color iconColor= Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon:  Icon(FontAwesomeIcons.twitter, color: iconColor,),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          primary: backgroundColor,
          shape:   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
      ),
    );
  }

 static Widget whatsappButton({required VoidCallback onTap, String title = "Login With WhatsApp",Color backgroundColor = whatsappColor, Color iconColor= Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon:  Icon(FontAwesomeIcons.whatsapp, color: iconColor,),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          primary: backgroundColor,
          shape:   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
      ),
    );
  }

 static Widget linkedinButton({required VoidCallback onTap, String title = "Login With Linkedin",Color backgroundColor = linkedinColor, Color iconColor= Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon:  Icon(FontAwesomeIcons.linkedin, color: iconColor,),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          primary: backgroundColor,
          shape:   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
      ),
    );
  }

 static Widget githubButton({required VoidCallback onTap, String title = "Login With Github",Color backgroundColor = githubColor, Color iconColor= Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon:  Icon(FontAwesomeIcons.github,  color: iconColor,),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          primary: backgroundColor,
          shape:   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
      ),
    );
  }

 static Widget phoneButton({required VoidCallback onTap, String title = "Login With Phone",Color backgroundColor = phoneColor, Color iconColor= Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon:  Icon(Icons.phone_android, color: iconColor,),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          primary: backgroundColor,
          shape:   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
      ),
    );
  }

  // Circle Buttons

 static Widget facebookButtonCircle({required VoidCallback onTap,Color backgroundColor = facebookColor, Color iconColor= Colors.white}) {
    return ElevatedButton(onPressed: onTap,
      child: Icon(FontAwesomeIcons.facebookF, color: iconColor,),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: backgroundColor,
        padding: const EdgeInsets.all(20),
      ),);
  }

 static Widget googleButtonCircle({required VoidCallback onTap, Color backgroundColor = googleColor, Color iconColor= Colors.white}) {
    return ElevatedButton(onPressed: onTap,
      child:  Icon(FontAwesomeIcons.google,color: iconColor,),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: backgroundColor,
        padding: const EdgeInsets.all(20),
      ),);
  }

 static Widget twitterButtonCircle({required VoidCallback onTap, Color backgroundColor = twitterColor, Color iconColor= Colors.white}) {
    return ElevatedButton(onPressed: onTap,
      child: Icon(FontAwesomeIcons.twitter, color: iconColor,),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: backgroundColor,
        padding: const EdgeInsets.all(20),
      ),);
  }

 static Widget whatsappButtonCircle({required VoidCallback onTap, Color backgroundColor = whatsappColor, Color iconColor= Colors.white}) {
    return ElevatedButton(onPressed: onTap,
      child: Icon(FontAwesomeIcons.whatsapp, color: iconColor ,),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: backgroundColor,
        padding: const EdgeInsets.all(20),
      ),);
  }

 static Widget linkedinButtonCircle({required VoidCallback onTap, Color backgroundColor = linkedinColor, Color iconColor= Colors.white}) {
    return ElevatedButton(onPressed: onTap,
      child: Icon(FontAwesomeIcons.linkedin, color: iconColor,),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: backgroundColor,
        padding: const EdgeInsets.all(20),
      ),);
  }

 static Widget githubButtonCircle({required VoidCallback onTap, Color backgroundColor = githubColor, Color iconColor= Colors.white}) {
    return ElevatedButton(onPressed: onTap,
      child: Icon(FontAwesomeIcons.github, color: iconColor,),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: backgroundColor,
        padding: const EdgeInsets.all(20),
      ),);
  }

  static Widget phoneButtonCircle({required VoidCallback onTap, Color backgroundColor = phoneColor, Color iconColor= Colors.white}) {
    return ElevatedButton(onPressed: onTap,
      child: Icon(Icons.phone_android, color: iconColor,),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: backgroundColor,
        padding: const EdgeInsets.all(20),
      ),);
  }

}
