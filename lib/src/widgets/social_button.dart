import 'package:flutter/material.dart';

// A reusable button widget for social media platforms
class SocialButton extends StatelessWidget {
  // Callback function when the button is tapped
  final VoidCallback onTap;

  // Icon to be displayed on the button
  final Widget icon;

  // Background color of the button
  final Color buttonColor;

  // Text label displayed on the button
  final String label;

  // Optional text style for the label
  final TextStyle? titleStyle;

  // Boolean to determine if the button is mini (round) or normal
  final bool mini;

  // Size of the icon on the button
  final double iconSize;

  // Boolean to control whether the label is displayed or not
  final bool showLabel;

  // Optional border radius for the button
  final BorderRadius? borderRadius;

  // Optional padding for the button
  final EdgeInsets? padding;

  // Constructor with named parameters for customization
  const SocialButton({
    Key? key,
    required this.onTap, // Required onTap callback
    required this.icon, // Required icon widget
    required this.buttonColor, // Required button background color
    required this.label, // Required label text
    this.titleStyle, // Optional title style
    this.mini = false, // Defaults to false (normal button size)
    this.iconSize = 24.0, // Defaults to 24.0 for icon size
    this.showLabel = true, // Defaults to true (label will be shown)
    this.borderRadius, // Optional border radius
    this.padding, // Optional padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // If 'mini' is true, create a round button with just an icon
    return mini
        ? ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), // Circular shape for mini button
              backgroundColor: buttonColor, // Background color for mini button
              padding: padding ??
                  const EdgeInsets.all(20), // Padding for mini button
            ),
            child: icon, // Icon displayed on the mini button
          )
        : Container(
            padding: padding ??
                const EdgeInsets.all(20.0), // Padding for normal button
            width: double.infinity, // Full width for normal button
            child: ElevatedButton.icon(
              onPressed: onTap, // Action when button is pressed
              icon: icon, // Icon displayed on the normal button
              label: showLabel
                  ? Text(
                      label, // Label text displayed on the button
                      style: titleStyle ??
                          TextStyle(
                              fontSize: 16, // Default font size
                              fontWeight:
                                  FontWeight.w600, // Default font weight
                              color: Colors.white), // Default font color
                    )
                  : const SizedBox
                      .shrink(), // Empty widget if label is not shown
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20), // Padding for normal button
                backgroundColor:
                    buttonColor, // Background color for normal button
                shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ??
                      BorderRadius.circular(12), // Button border radius
                ),
              ),
            ),
          );
  }
}
