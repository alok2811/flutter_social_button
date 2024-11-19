import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

// A widget that provides different social login buttons based on ButtonType
class FlutterSocialButton extends StatelessWidget {
  // Callback function when the button is tapped
  final VoidCallback onTap;

  // The type of social button (e.g., Facebook, Google, etc.)
  final ButtonType buttonType;

  // Icon color for the button
  final Color iconColor;

  // Boolean to determine if the button is mini (round) or normal
  final bool mini;

  // Optional title for the button (e.g., 'Login with Facebook')
  final String? title;

  // Size of the icon on the button
  final double iconSize;

  // Boolean to control whether the label is displayed or not
  final bool showLabel;

  // Optional text style for the title/label
  final TextStyle? titleStyle;

  // Optional custom icon for the button
  final Widget? customIcon;

  // Constructor for the FlutterSocialButton widget with named parameters
  const FlutterSocialButton({
    Key? key,
    required this.onTap, // Required onTap callback
    this.buttonType = ButtonType.email, // Defaults to email button
    this.iconColor = Colors.white, // Defaults to white icon color
    this.mini = false, // Defaults to false (normal button size)
    this.title, // Optional title for the button
    this.iconSize = 24.0, // Defaults to 24.0 for icon size
    this.showLabel = true, // Defaults to true (label will be shown)
    this.titleStyle, // Optional title style
    this.customIcon, // Optional custom icon
  }) : super(key: key);

  // Returns a SocialButton widget with the given parameters
  Widget _buildSocialButton({
    required Color buttonColor, // Button color
    required Widget icon, // Icon to be displayed
    required String label, // Label text for the button
    required VoidCallback onTap, // Action when the button is tapped
    TextStyle? titleStyle, // Optional title style
    bool showLabel = true, // Whether to show the label or not
  }) {
    return SocialButton(
      onTap: onTap,
      buttonColor: buttonColor,
      icon: icon,
      label: label,
      titleStyle: titleStyle,
      mini: mini,
      iconSize: iconSize,
      showLabel: showLabel,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Switch statement to create the correct button based on the ButtonType
    switch (buttonType) {
      case ButtonType.apple:
        // Apple login button
        return _buildSocialButton(
          buttonColor: ButtonColors.apple, // Apple button color
          icon: customIcon ??
              Icon(
                FontAwesomeIcons.apple, // Default Apple icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ??
              'Login With Apple', // Default label if no title is provided
          onTap: onTap,
          titleStyle: titleStyle, // Custom title style if provided
        );

      case ButtonType.yahoo:
        // Yahoo login button
        return _buildSocialButton(
          buttonColor: ButtonColors.yahoo, // Yahoo button color
          icon: customIcon ??
              Icon(
                FontAwesomeIcons.yahoo, // Default Yahoo icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login With Yahoo!',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.facebook:
        // Facebook login button
        return _buildSocialButton(
          buttonColor: ButtonColors.facebook, // Facebook button color
          icon: customIcon ??
              Icon(
                FontAwesomeIcons.facebookF, // Default Facebook icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login With Facebook',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.google:
        // Google login button
        return _buildSocialButton(
          buttonColor: ButtonColors.google, // Google button color
          icon: customIcon ??
              Icon(
                FontAwesomeIcons.google, // Default Google icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login With Google',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.twitter:
        // Twitter login button (now X)
        return _buildSocialButton(
          buttonColor: ButtonColors.twitter, // Twitter button color
          icon: customIcon ??
              Icon(
                FontAwesomeIcons.x, // Default Twitter (X) icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login With X',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.linkedin:
        // LinkedIn login button
        return _buildSocialButton(
          buttonColor: ButtonColors.linkedin, // LinkedIn button color
          icon: customIcon ??
              Icon(
                FontAwesomeIcons.linkedin, // Default LinkedIn icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login with Linkedin',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.whatsapp:
        // WhatsApp login button
        return _buildSocialButton(
          buttonColor: ButtonColors.whatsapp, // WhatsApp button color
          icon: customIcon ??
              Icon(
                FontAwesomeIcons.whatsapp, // Default WhatsApp icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login With Whatsapp',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.github:
        // GitHub login button
        return _buildSocialButton(
          buttonColor: ButtonColors.github, // GitHub button color
          icon: customIcon ??
              Icon(
                FontAwesomeIcons.github, // Default GitHub icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login With Github',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.phone:
        // Phone login button
        return _buildSocialButton(
          buttonColor: ButtonColors.phone, // Phone button color
          icon: customIcon ??
              Icon(
                Icons.phone_android, // Default phone icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login With Phone',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.instagram:
        // Instagram login button
        return _buildSocialButton(
          buttonColor: ButtonColors.instagram, // Instagram button color
          icon: customIcon ??
              Icon(
                FontAwesomeIcons.instagram, // Default Instagram icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login With Instagram',
          onTap: onTap,
          titleStyle: titleStyle,
          showLabel: showLabel, // Control label visibility for Instagram
        );

      default:
        // Default to email login button
        return _buildSocialButton(
          buttonColor: ButtonColors.email, // Email button color
          icon: customIcon ??
              Icon(
                Icons.email, // Default Email icon
                color: iconColor,
                size: iconSize,
              ),
          label: title ?? 'Login With Email', // Default label for email
          onTap: onTap,
          titleStyle: titleStyle,
        );
    }
  }
}
