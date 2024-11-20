import 'package:flutter_social_button/flutter_social_button.dart';

class SocialButton extends StatelessWidget {
  /// Callback function when the button is tapped.
  final VoidCallback onTap;

  /// Icon to be displayed on the button.
  final Widget icon;

  /// Background color of the button.
  final Color buttonColor;

  /// Text label displayed on the button.
  final String label;

  /// Optional text style for the label.
  final TextStyle? titleStyle;

  /// Size of the icon on the button.
  final double iconSize;

  /// Boolean to control whether the label is displayed or not.
  final bool showLabel;

  /// Optional border radius for the button (applies to square style only).
  final BorderRadius? borderRadius;

  /// Optional padding for the button.
  final EdgeInsets? padding;

  /// Optional elevation for the button.
  final double? elevation;

  /// Optional border color for the button.
  final Color? borderColor;

  /// Optional border width for the button.
  final double? borderWidth;

  /// Optional width for the button.
  final double? width;

  /// Optional height for the button.
  final double? height;
  final bool mini;

  /// Enum to define the button style (circle or square).
  final CustomButtonStyle buttonStyle;

  // Constructor to initialize the button properties
  const SocialButton({
    Key? key,
    required this.onTap,

    /// Callback for tap action
    required this.icon,

    /// Icon widget for the button
    required this.buttonColor, // Background color
    required this.label,
    required this.mini,

    /// Label text
    this.titleStyle,

    /// Optional custom text style for the label
    this.iconSize = 24.0,

    /// Optional icon size
    this.showLabel = true,

    /// Optional flag to show/hide label
    this.borderRadius,

    /// Optional custom border radius
    this.padding,

    /// Optional padding
    this.elevation = 2.0,

    /// Optional shadow elevation
    this.borderColor,

    /// Optional border color
    this.borderWidth = 0.0,

    /// Optional border width
    this.width,

    /// Optional button width
    this.height,

    /// Optional button height
    this.buttonStyle = CustomButtonStyle.square,

    /// Default button style is square
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Build the custom button
    return GestureDetector(
      /// Detects tap action and triggers the onTap callback
      onTap: onTap,
      child: Container(
        /// Wraps the button inside a container
        width: width,

        /// Custom width if provided
        height: height,

        /// Custom height if provided
        padding: padding ??
            const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12), // Default padding if none provided
        decoration: BoxDecoration(
          /// Custom button styling
          color: buttonColor,

          /// Background color
          borderRadius: buttonStyle == CustomButtonStyle.circle
              ? null

              /// Circle button should not have a border radius
              : (borderRadius ?? BorderRadius.circular(5)),

          /// Default or custom border radius for square buttons
          border: borderColor != null && borderWidth! > 0
              ? Border.all(color: borderColor!, width: borderWidth!)

              /// Border with specified color and width
              : null,

          /// No border if none specified
          shape: buttonStyle == CustomButtonStyle.circle
              ? BoxShape.circle

              /// Circle shape if specified
              : BoxShape.rectangle,

          /// Default to rectangle for square button
          boxShadow: [
            if (elevation != 0.0)

              /// Adds shadow if elevation is not zero
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: elevation!, // Blur radius of the shadow
                spreadRadius: 1.0, // Spread radius of the shadow
              ),
          ],
        ),
        child: Center(
          /// Centers the content inside the button
          child: buttonStyle == CustomButtonStyle.circle || mini
              ? icon

              /// Only display the icon for circle button
              : Row(
                  /// Displays icon and label for square button
                  mainAxisSize:
                      MainAxisSize.min, // Minimize row size to fit content
                  children: [
                    icon,

                    /// Display the icon
                    if (showLabel)

                      /// Conditionally display label based on the showLabel flag
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0), // Add space between icon and label
                        child: Text(
                          label,

                          /// Text to be displayed
                          style: titleStyle ??
                              TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors
                                    .white, // Default label style (white text)
                              ),
                        ),
                      ),
                  ],
                ),
        ),
      ),
    );
  }
}
