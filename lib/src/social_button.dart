import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_social_button/src/constants.dart';

// This is for defining ButtonType of buttons List
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
  final double iconSize;
  final bool showLabel;

  const FlutterSocialButton({
    Key? key,
    required this.onTap,
    this.buttonType = ButtonType.email,
    this.iconColor = Colors.white,
    this.mini = false,
    this.title,
    this.iconSize = 24.0,
    this.showLabel = true,
  }) : super(key: key);

  // Helper function to avoid repetition of button implementation
  Widget _buildButton({
    required Color buttonColor,
    required Icon icon,
    required String label,
    required VoidCallback onTap,
    bool showLabel = true,
  }) {
    return mini
        ? ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: buttonColor,
              padding: const EdgeInsets.all(20),
            ),
            child: icon,
          )
        : Container(
            padding: const EdgeInsets.all(20.0),
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onTap,
              icon: icon,
              label: showLabel ? Text(label) : SizedBox.shrink(),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      // Apple Button implementation
      case ButtonType.apple:
        return _buildButton(
          buttonColor: appleColor,
          icon: Icon(
            FontAwesomeIcons.apple,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With Apple',
          onTap: onTap,
        );

      // Yahoo Button implementation
      case ButtonType.yahoo:
        return _buildButton(
          buttonColor: yahooColor,
          icon: Icon(
            FontAwesomeIcons.yahoo,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With Yahoo!',
          onTap: onTap,
        );

      // Facebook Button implementation
      case ButtonType.facebook:
        return _buildButton(
          buttonColor: facebookColor,
          icon: Icon(
            FontAwesomeIcons.facebookF,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With Facebook',
          onTap: onTap,
        );

      // Google Button implementation
      case ButtonType.google:
        return _buildButton(
          buttonColor: googleColor,
          icon: Icon(
            FontAwesomeIcons.google,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With Google',
          onTap: onTap,
        );

      // Twitter Button implementation
      case ButtonType.twitter:
        return _buildButton(
          buttonColor: twitterColor,
          icon: Icon(
            FontAwesomeIcons.x,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With X',
          onTap: onTap,
        );

      // Linkedin Button implementation
      case ButtonType.linkedin:
        return _buildButton(
          buttonColor: linkedinColor,
          icon: Icon(
            FontAwesomeIcons.linkedin,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login with Linkedin',
          onTap: onTap,
        );

      // Whatsapp Button implementation
      case ButtonType.whatsapp:
        return _buildButton(
          buttonColor: whatsappColor,
          icon: Icon(
            FontAwesomeIcons.whatsapp,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With Whatsapp',
          onTap: onTap,
        );

      // GitHub Button implementation
      case ButtonType.github:
        return _buildButton(
          buttonColor: githubColor,
          icon: Icon(
            FontAwesomeIcons.github,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With Github',
          onTap: onTap,
        );

      // Phone Button implementation
      case ButtonType.phone:
        return _buildButton(
          buttonColor: phoneColor,
          icon: Icon(
            Icons.phone_android,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With Phone',
          onTap: onTap,
        );

      // Instagram Button implementation
      case ButtonType.instagram:
        return _buildButton(
          buttonColor: Colors.transparent, // Gradient used below
          icon: Icon(
            FontAwesomeIcons.instagram,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With Instagram',
          onTap: onTap,
          showLabel: showLabel,
        );

      // Default Email Button implementation
      default:
        return _buildButton(
          buttonColor: emailColor,
          icon: Icon(
            Icons.email,
            color: iconColor,
            size: iconSize,
          ),
          label: title ?? 'Login With Email',
          onTap: onTap,
        );
    }
  }
}
