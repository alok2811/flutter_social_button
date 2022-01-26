library flutter_social_button;
import 'package:flutter/material.dart';
import 'package:flutter_social_button/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton{

 static Widget facebookButton({required VoidCallback onTap, String title = "Login With Facebook",}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
            color: facebookColor, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }

 static Widget googleButton({required VoidCallback onTap, String title = "Login With Google",}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
            color: googleColor, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }

 static Widget twitterButton({required VoidCallback onTap, String title = "Login With Twitter",}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
            color: twitterColor, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }

 static Widget whatsappButton({required VoidCallback onTap, String title = "Login With WhatsApp",}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
            color: whatsappColor, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }

 static Widget linkedinButton({required VoidCallback onTap, String title = "Login With Linkedin",}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
            color: linkedinColor, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              FontAwesomeIcons.linkedin,
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }

 static Widget githubButton({required VoidCallback onTap, String title = "Login With Github",}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
            color: githubColor, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              FontAwesomeIcons.github,
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }

 static Widget facebookButtonCircle({required VoidCallback onTap}) {
    return ElevatedButton(onPressed: onTap,
      child: const Icon(FontAwesomeIcons.facebook),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: facebookColor,
        padding: const EdgeInsets.all(16),
      ),);
  }

 static Widget googleButtonCircle({required VoidCallback onTap}) {
    return ElevatedButton(onPressed: onTap,
      child: const Icon(FontAwesomeIcons.google),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: googleColor,
        padding: const EdgeInsets.all(16),
      ),);
  }

 static Widget twitterButtonCircle({required VoidCallback onTap}) {
    return ElevatedButton(onPressed: onTap,
      child: const Icon(FontAwesomeIcons.twitter),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: twitterColor,
        padding: const EdgeInsets.all(16),
      ),);
  }

 static Widget whatsappButtonCircle({required VoidCallback onTap}) {
    return ElevatedButton(onPressed: onTap,
      child: const Icon(FontAwesomeIcons.whatsapp),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: whatsappColor,
        padding: const EdgeInsets.all(16),
      ),);
  }

 static Widget linkedinButtonCircle({required VoidCallback onTap}) {
    return ElevatedButton(onPressed: onTap,
      child: const Icon(FontAwesomeIcons.linkedin),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: linkedinColor,
        padding: const EdgeInsets.all(16),
      ),);
  }

 static Widget githubButtonCircle({required VoidCallback onTap}) {
    return ElevatedButton(onPressed: onTap,
      child: const Icon(FontAwesomeIcons.github),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: githubColor,
        padding: const EdgeInsets.all(16),
      ),);
  }

}
