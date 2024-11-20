import 'package:flutter_social_button/flutter_social_button.dart'; // For icons

class FlutterSocialButton extends StatelessWidget {
  /// The callback function when the button is tapped.
  final VoidCallback onTap;

  /// The type of social button.
  final ButtonType buttonType;

  /// The icon color for the button.
  final Color iconColor;

/*  /// Determines if the button is a mini (circular) or normal (rectangular).
  final bool mini;*/

  /// The title of the button (e.g., 'Login with Facebook').
  final String? title;

  /// The size of the icon displayed on the button.
  final double iconSize;

  /// Whether to show the label or not.
  final bool showLabel;

  /// Custom text style for the label.
  final TextStyle? titleStyle;

  /// Custom icon widget for the button.
  final Widget? customIcon;

  /// The background color of the button.
  final Color? customButtonColor;

  /// Fully customizable width of the button.
  final double? width;

  /// Fully customizable height of the button.
  final double? height;

  /// Optional padding for the button.
  final EdgeInsets? padding;

  /// The border radius for the button.
  final BorderRadius? borderRadius;

  /// Optional elevation for the button.
  final double elevation;

  /// Optional border color for the button.
  final Color? borderColor;

  /// Optional border width for the button.
  final double borderWidth;

  final CustomButtonStyle buttonStyle;

  const FlutterSocialButton({
    Key? key,
    required this.onTap,
    this.buttonType = ButtonType.email,
    this.iconColor = Colors.white,
    this.title,
    this.buttonStyle = CustomButtonStyle.square,
    this.iconSize = 24.0,
    this.showLabel = true,
    this.titleStyle,
    this.customIcon,
    this.customButtonColor,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.elevation = 2.0,
    this.borderColor,
    this.borderWidth = 0.0,
  }) : super(key: key);

  // A utility function to retrieve the color by ButtonType
  Color _getColor() {
    switch (buttonType) {
      case ButtonType.apple:
        return ButtonColors.apple;
      case ButtonType.yahoo:
        return ButtonColors.yahoo;
      case ButtonType.facebook:
        return ButtonColors.facebook;
      case ButtonType.google:
        return ButtonColors.google;
      case ButtonType.twitter:
        return ButtonColors.x;
      case ButtonType.linkedin:
        return ButtonColors.linkedin;
      case ButtonType.whatsapp:
        return ButtonColors.whatsapp;
      case ButtonType.github:
        return ButtonColors.github;
      case ButtonType.phone:
        return ButtonColors.phone;
      case ButtonType.instagram:
        return ButtonColors.instagram;
      case ButtonType.snapchat:
        return ButtonColors.snapchat;
      case ButtonType.pinterest:
        return ButtonColors.pinterest;
      case ButtonType.tiktok:
        return ButtonColors.tiktok;
      case ButtonType.reddit:
        return ButtonColors.reddit;
      case ButtonType.discord:
        return ButtonColors.discord;
      case ButtonType.wechat:
        return ButtonColors.wechat;
      case ButtonType.line:
        return ButtonColors.line;
      case ButtonType.quora:
        return ButtonColors.quora;
      case ButtonType.twitch:
        return ButtonColors.twitch;
      case ButtonType.flickr:
        return ButtonColors.flickr;
      case ButtonType.spotify:
        return ButtonColors.spotify;
      case ButtonType.youtube:
        return ButtonColors.youtube;
      case ButtonType.tumblr:
        return ButtonColors.tumblr;
      case ButtonType.skype:
        return ButtonColors.skype;
      case ButtonType.viber:
        return ButtonColors.viber;
      case ButtonType.yelp:
        return ButtonColors.yelp;
      case ButtonType.website:
        return ButtonColors.website;
      default:
        return ButtonColors.defaultColor;
    }
  }

  Widget _getIcon() {
    switch (buttonType) {
      case ButtonType.facebook:
        return customIcon ??
            Icon(FontAwesomeIcons.facebookF, color: iconColor, size: iconSize);
      case ButtonType.google:
        return customIcon ??
            Icon(FontAwesomeIcons.google, color: iconColor, size: iconSize);
      case ButtonType.twitter:
        return customIcon ??
            Icon(FontAwesomeIcons.twitter, color: iconColor, size: iconSize);
      case ButtonType.linkedin:
        return customIcon ??
            Icon(FontAwesomeIcons.linkedin, color: iconColor, size: iconSize);
      case ButtonType.whatsapp:
        return customIcon ??
            Icon(FontAwesomeIcons.whatsapp, color: iconColor, size: iconSize);
      case ButtonType.apple:
        return customIcon ??
            Icon(FontAwesomeIcons.apple, color: iconColor, size: iconSize);
      case ButtonType.github:
        return customIcon ??
            Icon(FontAwesomeIcons.github, color: iconColor, size: iconSize);
      case ButtonType.yahoo:
        return customIcon ??
            Icon(FontAwesomeIcons.yahoo, color: iconColor, size: iconSize);
      case ButtonType.phone:
        return customIcon ??
            Icon(Icons.phone_android, color: iconColor, size: iconSize);
      case ButtonType.email:
        return customIcon ??
            Icon(Icons.email, color: iconColor, size: iconSize);
      case ButtonType.instagram:
        return customIcon ??
            Icon(FontAwesomeIcons.instagram, color: iconColor, size: iconSize);
      case ButtonType.youtube:
        return customIcon ??
            Icon(FontAwesomeIcons.youtube, color: iconColor, size: iconSize);
      case ButtonType.snapchat:
        return customIcon ??
            Icon(FontAwesomeIcons.snapchat, color: iconColor, size: iconSize);
      case ButtonType.pinterest:
        return customIcon ??
            Icon(FontAwesomeIcons.pinterest, color: iconColor, size: iconSize);
      case ButtonType.tiktok:
        return customIcon ??
            Icon(FontAwesomeIcons.tiktok, color: iconColor, size: iconSize);
      case ButtonType.reddit:
        return customIcon ??
            Icon(FontAwesomeIcons.redditAlien,
                color: iconColor, size: iconSize);
      case ButtonType.tumblr:
        return customIcon ??
            Icon(FontAwesomeIcons.tumblr, color: iconColor, size: iconSize);
      case ButtonType.skype:
        return customIcon ??
            Icon(FontAwesomeIcons.skype, color: iconColor, size: iconSize);
      case ButtonType.viber:
        return customIcon ??
            Icon(FontAwesomeIcons.viber, color: iconColor, size: iconSize);
      case ButtonType.discord:
        return customIcon ??
            Icon(FontAwesomeIcons.discord, color: iconColor, size: iconSize);
      case ButtonType.wechat:
        return customIcon ??
            Icon(FontAwesomeIcons.weixin,
                color: iconColor,
                size: iconSize); // FontAwesome uses "weixin" for WeChat
      case ButtonType.line:
        return customIcon ??
            Icon(FontAwesomeIcons.line, color: iconColor, size: iconSize);
      case ButtonType.quora:
        return customIcon ??
            Icon(FontAwesomeIcons.quora, color: iconColor, size: iconSize);
      case ButtonType.twitch:
        return customIcon ??
            Icon(FontAwesomeIcons.twitch, color: iconColor, size: iconSize);
      case ButtonType.flickr:
        return customIcon ??
            Icon(FontAwesomeIcons.flickr, color: iconColor, size: iconSize);
      case ButtonType.yelp:
        return customIcon ??
            Icon(FontAwesomeIcons.yelp, color: iconColor, size: iconSize);
      case ButtonType.spotify:
        return customIcon ??
            Icon(FontAwesomeIcons.spotify, color: iconColor, size: iconSize);
      case ButtonType.website:
        return customIcon ??
            Icon(Icons.language, color: iconColor, size: iconSize);
      default:
        return customIcon ??
            Icon(Icons.email, color: iconColor, size: iconSize); // Default case
    }
  }

  @override
  Widget build(BuildContext context) {
    return SocialButton(
      onTap: onTap,
      icon: _getIcon(),
      buttonColor: customButtonColor ?? _getColor(),
      label: title ?? '',
      titleStyle: titleStyle,
      iconSize: iconSize,
      showLabel: showLabel,
      padding: padding,
      borderRadius: borderRadius,
      elevation: elevation,
      borderColor: borderColor,
      borderWidth: borderWidth,
      width: width,
      height: height,
      buttonStyle: buttonStyle,
    );
  }
}
