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

  /// A utility function to retrieve the color by ButtonType
  /// A method to return a color based on the button type.
  Color _getColor() {
    // Use a switch statement to determine which color to return based on the button type.
    switch (buttonType) {
      case ButtonType.apple:

        /// Return the apple button color from ButtonColors.
        return ButtonColors.apple;
      case ButtonType.yahoo:

        /// Return the yahoo button color from ButtonColors.
        return ButtonColors.yahoo;
      case ButtonType.facebook:

        /// Return the facebook button color from ButtonColors.
        return ButtonColors.facebook;
      case ButtonType.google:

        /// Return the google button color from ButtonColors.
        return ButtonColors.google;
      case ButtonType.twitter:

        /// Return the twitter button color from ButtonColors.
        return ButtonColors
            .x; // 'x' is used here for Twitter, assuming that's the defined color.
      case ButtonType.linkedin:

        /// Return the linkedin button color from ButtonColors.
        return ButtonColors.linkedin;
      case ButtonType.whatsapp:

        /// Return the whatsapp button color from ButtonColors.
        return ButtonColors.whatsapp;
      case ButtonType.github:

        /// Return the github button color from ButtonColors.
        return ButtonColors.github;
      case ButtonType.phone:

        /// Return the phone button color from ButtonColors.
        return ButtonColors.phone;
      case ButtonType.instagram:

        /// Return the instagram button color from ButtonColors.
        return ButtonColors.instagram;
      case ButtonType.snapchat:

        /// Return the snapchat button color from ButtonColors.
        return ButtonColors.snapchat;
      case ButtonType.pinterest:

        /// Return the pinterest button color from ButtonColors.
        return ButtonColors.pinterest;
      case ButtonType.tiktok:

        /// Return the tiktok button color from ButtonColors.
        return ButtonColors.tiktok;
      case ButtonType.reddit:

        /// Return the reddit button color from ButtonColors.
        return ButtonColors.reddit;
      case ButtonType.discord:

        /// Return the discord button color from ButtonColors.
        return ButtonColors.discord;
      case ButtonType.wechat:

        /// Return the wechat button color from ButtonColors.
        return ButtonColors.wechat;
      case ButtonType.line:

        /// Return the line button color from ButtonColors.
        return ButtonColors.line;
      case ButtonType.quora:

        /// Return the quora button color from ButtonColors.
        return ButtonColors.quora;
      case ButtonType.twitch:

        /// Return the twitch button color from ButtonColors.
        return ButtonColors.twitch;
      case ButtonType.flickr:

        /// Return the flickr button color from ButtonColors.
        return ButtonColors.flickr;
      case ButtonType.spotify:

        /// Return the spotify button color from ButtonColors.
        return ButtonColors.spotify;
      case ButtonType.youtube:

        /// Return the youtube button color from ButtonColors.
        return ButtonColors.youtube;
      case ButtonType.tumblr:

        /// Return the tumblr button color from ButtonColors.
        return ButtonColors.tumblr;
      case ButtonType.skype:

        /// Return the skype button color from ButtonColors.
        return ButtonColors.skype;
      case ButtonType.viber:

        /// Return the viber button color from ButtonColors.
        return ButtonColors.viber;
      case ButtonType.yelp:

        /// Return the yelp button color from ButtonColors.
        return ButtonColors.yelp;
      case ButtonType.website:

        /// Return the website button color from ButtonColors.
        return ButtonColors.website;
      default:

        /// Return a default color if no matching button type is found.
        return ButtonColors.defaultColor;
    }
  }

  /// A method to return an icon widget based on the button type.
  Widget _getIcon() {
    switch (buttonType) {
      case ButtonType.facebook:

        /// If no customIcon is provided, return the Facebook icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.facebookF, color: iconColor, size: iconSize);
      case ButtonType.google:

        /// Return the Google icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.google, color: iconColor, size: iconSize);
      case ButtonType.twitter:

        /// Return the Twitter icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.twitter, color: iconColor, size: iconSize);
      case ButtonType.linkedin:

        /// Return the LinkedIn icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.linkedin, color: iconColor, size: iconSize);
      case ButtonType.whatsapp:

        /// Return the WhatsApp icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.whatsapp, color: iconColor, size: iconSize);
      case ButtonType.apple:

        /// Return the Apple icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.apple, color: iconColor, size: iconSize);
      case ButtonType.github:

        /// Return the GitHub icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.github, color: iconColor, size: iconSize);
      case ButtonType.yahoo:

        /// Return the Yahoo icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.yahoo, color: iconColor, size: iconSize);
      case ButtonType.phone:

        /// Return the Phone icon using Flutter's built-in icon with the specified color and size.
        return customIcon ??
            Icon(Icons.phone_android, color: iconColor, size: iconSize);
      case ButtonType.email:

        /// Return the Email icon using Flutter's built-in icon with the specified color and size.
        return customIcon ??
            Icon(Icons.email, color: iconColor, size: iconSize);
      case ButtonType.instagram:

        /// Return the Instagram icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.instagram, color: iconColor, size: iconSize);
      case ButtonType.youtube:

        /// Return the YouTube icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.youtube, color: iconColor, size: iconSize);
      case ButtonType.snapchat:

        /// Return the Snapchat icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.snapchat, color: iconColor, size: iconSize);
      case ButtonType.pinterest:

        /// Return the Pinterest icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.pinterest, color: iconColor, size: iconSize);
      case ButtonType.tiktok:

        /// Return the TikTok icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.tiktok, color: iconColor, size: iconSize);
      case ButtonType.reddit:

        /// Return the Reddit icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.redditAlien,
                color: iconColor, size: iconSize);
      case ButtonType.tumblr:

        /// Return the Tumblr icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.tumblr, color: iconColor, size: iconSize);
      case ButtonType.skype:

        /// Return the Skype icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.skype, color: iconColor, size: iconSize);
      case ButtonType.viber:

        /// Return the Viber icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.viber, color: iconColor, size: iconSize);
      case ButtonType.discord:

        /// Return the Discord icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.discord, color: iconColor, size: iconSize);
      case ButtonType.wechat:

        /// Return the WeChat icon (weixin) from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.weixin, color: iconColor, size: iconSize);
      case ButtonType.line:

        /// Return the Line icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.line, color: iconColor, size: iconSize);
      case ButtonType.quora:

        /// Return the Quora icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.quora, color: iconColor, size: iconSize);
      case ButtonType.twitch:

        /// Return the Twitch icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.twitch, color: iconColor, size: iconSize);
      case ButtonType.flickr:

        /// Return the Flickr icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.flickr, color: iconColor, size: iconSize);
      case ButtonType.yelp:

        /// Return the Yelp icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.yelp, color: iconColor, size: iconSize);
      case ButtonType.spotify:

        /// Return the Spotify icon from FontAwesome with the specified color and size.
        return customIcon ??
            Icon(FontAwesomeIcons.spotify, color: iconColor, size: iconSize);
      case ButtonType.website:

        /// Return the Website icon using Flutter's built-in icon with the specified color and size.
        return customIcon ??
            Icon(Icons.language, color: iconColor, size: iconSize);
      default:

        /// Return a default icon (email icon) if no matching button type is found.
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
