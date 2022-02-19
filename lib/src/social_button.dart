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
  email
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
                child: Icon(
                  FontAwesomeIcons.apple,
                  color: iconColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: appleColor,
                  padding: const EdgeInsets.all(20),
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
                    primary: appleColor,
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
          child: Icon(
            FontAwesomeIcons.yahoo,
            color: iconColor,
          ),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            primary: yahooColor,
            padding: const EdgeInsets.all(20),
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
            label: Text(title != null ? '$title' : 'Login With Yahoo'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              primary: yahooColor,
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
                child: Icon(
                  FontAwesomeIcons.facebookF,
                  color: iconColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: facebookColor,
                  padding: const EdgeInsets.all(20),
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
                    primary: facebookColor,
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
                child: Icon(
                  FontAwesomeIcons.googlePlusSquare,
                  color: iconColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: googleColor,
                  padding: const EdgeInsets.all(20),
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
                    primary: googleColor,
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
                child: Icon(
                  FontAwesomeIcons.twitter,
                  color: iconColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: twitterColor,
                  padding: const EdgeInsets.all(20),
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onTap,
                  icon: Icon(
                    FontAwesomeIcons.twitter,
                    color: iconColor,
                  ),
                  label: Text(title != null ? '$title' : 'Login With Twitter'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    primary: twitterColor,
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
                child: Icon(
                  FontAwesomeIcons.linkedin,
                  color: iconColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: linkedinColor,
                  padding: const EdgeInsets.all(20),
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
                    primary: linkedinColor,
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
                child: Icon(
                  FontAwesomeIcons.whatsapp,
                  color: iconColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: whatsappColor,
                  padding: const EdgeInsets.all(20),
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
                    primary: whatsappColor,
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
                child: Icon(
                  FontAwesomeIcons.github,
                  color: iconColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: phoneColor,
                  padding: const EdgeInsets.all(20),
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
                    primary: githubColor,
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
                child: Icon(
                  Icons.phone_android,
                  color: iconColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: phoneColor,
                  padding: const EdgeInsets.all(20),
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
                    primary: phoneColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );

      default:
        //Email Button implementation
        return mini
            ? ElevatedButton(
                onPressed: onTap,
                child: Icon(
                  Icons.email,
                  color: iconColor,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: emailColor,
                  padding: const EdgeInsets.all(20),
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
                    primary: emailColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              );
    }
  }
}
