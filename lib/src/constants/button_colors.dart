import 'package:flutter_social_button/flutter_social_button.dart';
export 'package:flutter/material.dart';

class ButtonColors {
  /// Private static instance of the ButtonColors class
  static final ButtonColors _instance = ButtonColors._();

  /// Private constructor to prevent direct instantiation
  ButtonColors._();

  /// Public factory constructor to access the singleton instance
  /// If the instance is null, create it, otherwise return the existing instance
  factory ButtonColors() => _instance;

  /// Apple color
  Color apple = const Color(0xFF000000); // Apple black

  /// Yahoo color
  Color yahoo = const Color(0xFF410093); // Yahoo purple

  /// Facebook color
  Color facebook = const Color(0xFF1877F2); // Facebook blue

  /// Google color
  Color google = const Color(0xFF4285F4); // Google blue

  /// Twitter (X) color
  Color twitter = const Color(0xFF14171A); // Twitter blue

  /// LinkedIn color
  Color linkedin = const Color(0xFF0077B5); // LinkedIn blue

  /// WhatsApp color
  Color whatsapp = const Color(0xFF25D366); // WhatsApp green

  /// GitHub color
  Color github = const Color(0xFF24292F); // GitHub dark gray

  /// Phone color (standard phone icon color)
  Color phone = const Color(0xFF34B7F1); // Light blue (common for phone buttons)

  /// Instagram color
  Color instagram = const Color(0xFFDD2A7B); // Instagram pink

  /// Email color (standard for email icon)
  Color email = const Color(0xFF4285F4); // Google blue

  /// YouTube color
  Color youtube = const Color(0xFFFF0000); // YouTube red

  /// Snapchat color
  Color snapchat = const Color(0xFFFFFC00); // Snapchat yellow

  /// Pinterest color
  Color pinterest = const Color(0xFFE60023); // Pinterest red

  /// TikTok color
  Color tiktok = const Color(0xFF69C9D0); // TikTok teal
  Color tiktokRed = const Color(0xFFEE1D52); // TikTok red

  /// Reddit color
  Color reddit = const Color(0xFFFF4500); // Reddit orange

  /// Tumblr color
  Color tumblr = const Color(0xFF35465C); // Tumblr dark blue

  /// Skype color
  Color skype = const Color(0xFF00AFF0); // Skype blue

  /// Viber color
  Color viber = const Color(0xFF665CAC); // Viber purple

  /// Discord color
  Color discord = const Color(0xFF5865F2); // Discord blue

  /// WeChat color
  Color wechat = const Color(0xFF1AAD19); // WeChat green

  /// Line color
  Color line = const Color(0xFF00C300); // Line green

  /// Quora color
  Color quora = const Color(0xFFB92B27); // Quora red

  /// Twitch color
  Color twitch = const Color(0xFF9146FF); // Twitch purple

  /// Flickr color
  Color flickr = const Color(0xFF0063DC); // Flickr blue

  /// Yelp color
  Color yelp = const Color(0xFFD32323); // Yelp red

  /// Spotify color
  Color spotify = const Color(0xFF1DB954); // Spotify green

  /// Default color
  Color defaultColor = const Color(0xFF3D3D3D); // Default color

  /// Website color
  Color website = Colors.grey; // Website Grey
}
