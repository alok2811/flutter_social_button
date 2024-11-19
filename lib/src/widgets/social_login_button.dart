import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart'; // For icons

// A widget that provides different social login buttons based on ButtonType
class FlutterSocialButton extends StatelessWidget {
  final VoidCallback onTap; // Callback function when the button is tapped
  final ButtonType
      buttonType; // The type of social button (e.g., Facebook, Google, etc.)
  final Color iconColor; // Icon color for the button
  final bool
      mini; // Boolean to determine if the button is mini (round) or normal
  final String?
      title; // Optional title for the button (e.g., 'Login with Facebook')
  final double iconSize; // Size of the icon on the button
  final bool
      showLabel; // Boolean to control whether the label is displayed or not
  final TextStyle? titleStyle; // Optional text style for the title/label
  final Widget? customIcon; // Optional custom icon for the button

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

  Widget _buildSocialButton({
    required Color buttonColor,
    required Widget icon,
    required String label,
    required VoidCallback onTap,
    TextStyle? titleStyle,
    bool showLabel = true,
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
    switch (buttonType) {
      case ButtonType.apple:
        return _buildSocialButton(
          buttonColor: ButtonColors.apple,
          icon: customIcon ??
              Icon(FontAwesomeIcons.apple, color: iconColor, size: iconSize),
          label: title ?? 'Login With Apple',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.yahoo:
        return _buildSocialButton(
          buttonColor: ButtonColors.yahoo,
          icon: customIcon ??
              Icon(FontAwesomeIcons.yahoo, color: iconColor, size: iconSize),
          label: title ?? 'Login With Yahoo!',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.facebook:
        return _buildSocialButton(
          buttonColor: ButtonColors.facebook,
          icon: customIcon ??
              Icon(FontAwesomeIcons.facebookF,
                  color: iconColor, size: iconSize),
          label: title ?? 'Login With Facebook',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.google:
        return _buildSocialButton(
          buttonColor: ButtonColors.google,
          icon: customIcon ??
              Icon(FontAwesomeIcons.googlePlusG,
                  color: iconColor, size: iconSize),
          label: title ?? 'Login With Google',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.twitter:
        return _buildSocialButton(
          buttonColor: ButtonColors.x,
          icon: customIcon ??
              Icon(FontAwesomeIcons.x, color: iconColor, size: iconSize),
          label: title ?? 'Login With X',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.linkedin:
        return _buildSocialButton(
          buttonColor: ButtonColors.linkedin,
          icon: customIcon ??
              Icon(FontAwesomeIcons.linkedin, color: iconColor, size: iconSize),
          label: title ?? 'Login With LinkedIn',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.whatsapp:
        return _buildSocialButton(
          buttonColor: ButtonColors.whatsapp,
          icon: customIcon ??
              Icon(FontAwesomeIcons.whatsapp, color: iconColor, size: iconSize),
          label: title ?? 'Login With WhatsApp',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.github:
        return _buildSocialButton(
          buttonColor: ButtonColors.github,
          icon: customIcon ??
              Icon(FontAwesomeIcons.github, color: iconColor, size: iconSize),
          label: title ?? 'Login With GitHub',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.phone:
        return _buildSocialButton(
          buttonColor: ButtonColors.phone,
          icon: customIcon ??
              Icon(Icons.phone_android, color: iconColor, size: iconSize),
          label: title ?? 'Login With Phone',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.instagram:
        return _buildSocialButton(
          buttonColor: ButtonColors.instagram,
          icon: customIcon ??
              Icon(FontAwesomeIcons.instagram,
                  color: iconColor, size: iconSize),
          label: title ?? 'Login With Instagram',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.snapchat:
        return _buildSocialButton(
          buttonColor: ButtonColors.snapchat,
          icon: customIcon ??
              Icon(FontAwesomeIcons.snapchatGhost,
                  color: iconColor, size: iconSize),
          label: title ?? 'Login With Snapchat',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.pinterest:
        return _buildSocialButton(
          buttonColor: ButtonColors.pinterest,
          icon: customIcon ??
              Icon(FontAwesomeIcons.pinterest,
                  color: iconColor, size: iconSize),
          label: title ?? 'Login With Pinterest',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.tiktok:
        return _buildSocialButton(
          buttonColor: ButtonColors.tiktok,
          icon: customIcon ??
              Icon(FontAwesomeIcons.tiktok, color: iconColor, size: iconSize),
          label: title ?? 'Login With TikTok',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.reddit:
        return _buildSocialButton(
          buttonColor: ButtonColors.reddit,
          icon: customIcon ??
              Icon(FontAwesomeIcons.reddit, color: iconColor, size: iconSize),
          label: title ?? 'Login With Reddit',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.discord:
        return _buildSocialButton(
          buttonColor: ButtonColors.discord,
          icon: customIcon ??
              Icon(FontAwesomeIcons.discord, color: iconColor, size: iconSize),
          label: title ?? 'Login With Discord',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.wechat:
        return _buildSocialButton(
          buttonColor: ButtonColors.wechat,
          icon: customIcon ??
              Icon(FontAwesomeIcons.weixin, color: iconColor, size: iconSize),
          label: title ?? 'Login With WeChat',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.line:
        return _buildSocialButton(
          buttonColor: ButtonColors.line,
          icon: customIcon ??
              Icon(FontAwesomeIcons.line, color: iconColor, size: iconSize),
          label: title ?? 'Login With Line',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.quora:
        return _buildSocialButton(
          buttonColor: ButtonColors.quora,
          icon: customIcon ??
              Icon(FontAwesomeIcons.quora, color: iconColor, size: iconSize),
          label: title ?? 'Login With Quora',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.twitch:
        return _buildSocialButton(
          buttonColor: ButtonColors.twitch,
          icon: customIcon ??
              Icon(FontAwesomeIcons.twitch, color: iconColor, size: iconSize),
          label: title ?? 'Login With Twitch',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.flickr:
        return _buildSocialButton(
          buttonColor: ButtonColors.flickr,
          icon: customIcon ??
              Icon(FontAwesomeIcons.flickr, color: iconColor, size: iconSize),
          label: title ?? 'Login With Flickr',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.spotify:
        return _buildSocialButton(
          buttonColor: ButtonColors.spotify,
          icon: customIcon ??
              Icon(FontAwesomeIcons.spotify, color: iconColor, size: iconSize),
          label: title ?? 'Login With Spotify',
          onTap: onTap,
          titleStyle: titleStyle,
        );
      case ButtonType.youtube:
        return _buildSocialButton(
          buttonColor: ButtonColors.youtube,
          icon: customIcon ??
              Icon(FontAwesomeIcons.youtube, color: iconColor, size: iconSize),
          label: title ?? 'Login With YouTube',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.tumblr:
        return _buildSocialButton(
          buttonColor: ButtonColors.tumblr,
          icon: customIcon ??
              Icon(FontAwesomeIcons.tumblr, color: iconColor, size: iconSize),
          label: title ?? 'Login With Tumblr',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.skype:
        return _buildSocialButton(
          buttonColor: ButtonColors.skype,
          icon: customIcon ??
              Icon(FontAwesomeIcons.skype, color: iconColor, size: iconSize),
          label: title ?? 'Login With Skype',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.viber:
        return _buildSocialButton(
          buttonColor: ButtonColors.viber,
          icon: customIcon ??
              Icon(FontAwesomeIcons.viber, color: iconColor, size: iconSize),
          label: title ?? 'Login With Viber',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      case ButtonType.yelp:
        return _buildSocialButton(
          buttonColor: ButtonColors.yelp,
          icon: customIcon ??
              Icon(FontAwesomeIcons.yelp, color: iconColor, size: iconSize),
          label: title ?? 'Login With Yelp',
          onTap: onTap,
          titleStyle: titleStyle,
        );

      default:
        return _buildSocialButton(
          buttonColor: ButtonColors.email,
          icon:
              customIcon ?? Icon(Icons.email, color: iconColor, size: iconSize),
          label: title ?? 'Login With Email',
          onTap: onTap,
          titleStyle: titleStyle,
        );
    }
  }
}
