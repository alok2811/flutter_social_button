import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_social_button/src/constants.dart';

//This is for define ButtonType of buttons List
enum ButtonType {
  facebook,
  google,
  twitter,
  linkedin,
  whatsapp,
  apple,
  github,
  yahoo,
  phone,
  email,
  instagram
}

class FlutterSocialButton extends StatelessWidget {
  final VoidCallback onTap;
  final ButtonType buttonType;
  final Color iconColor;
  final bool mini;
  final String? title;

  const FlutterSocialButton({
    Key? key,
    required this.onTap,
    this.buttonType = ButtonType.email,
    this.iconColor = Colors.white,
    this.mini = false,
    this.title,
  }) : super(key: key);

  // If we pass mini true its change button to small Circular button

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      //Apple Button implementation
      case ButtonType.apple:
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: appleColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  FontAwesomeIcons.apple,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    FontAwesomeIcons.apple,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With Apple'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: appleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

      //Yahoo Button implementation
      case ButtonType.yahoo:
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: yahooColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  FontAwesomeIcons.yahoo,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    FontAwesomeIcons.yahoo,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With Yahoo!'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: yahooColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

      //Facebook Button implementation
      case ButtonType.facebook:
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: facebookColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  FontAwesomeIcons.facebookF,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With Facebook'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: facebookColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

      //Google Button implementation
      case ButtonType.google:
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: googleColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  FontAwesomeIcons.google,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With Google'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: googleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

      //Twitter Button implementation
      case ButtonType.twitter:
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: twitterColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  FontAwesomeIcons.x,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    FontAwesomeIcons.x,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With X'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: twitterColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

      //Linkedin Button implementation
      case ButtonType.linkedin:
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: linkedinColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  FontAwesomeIcons.linkedin,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    FontAwesomeIcons.linkedin,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login with Linkedin'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: linkedinColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

      //Whatsapp Button implementation
      case ButtonType.whatsapp:
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: whatsappColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  FontAwesomeIcons.whatsapp,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    FontAwesomeIcons.whatsapp,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With Whatsapp'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: whatsappColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

      //GitHub Button implementation
      case ButtonType.github:
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: phoneColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  FontAwesomeIcons.github,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    FontAwesomeIcons.github,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With Github'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: githubColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

      //Phone Button implementation
      case ButtonType.phone:
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: phoneColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  Icons.phone_android,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    Icons.phone_android,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With Phone'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: phoneColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

//Instagram button implementation
      case ButtonType.instagram:
        return mini
            ? Container(
                decoration: BoxDecoration(
                  gradient: instagramGradient,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.all(20),
                    shadowColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    color: iconColor,
                  ),
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: instagramGradient,
                      borderRadius: BorderRadius.circular(12)),
                  child: ElevatedButton.icon(
                    onPressed: onTap,
                    icon: Icon(
                      FontAwesomeIcons.instagram,
                      color: iconColor,
                    ),
                    label:
                        Text(title != null ? '$title' : 'Login With Instagram'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      padding: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                  ),
                ),
              );

      default:
        //Email Button implementation
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: emailColor,
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(
                  Icons.email,
                  color: iconColor,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    Icons.email,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With Email'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: emailColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );
    }
  }
}
