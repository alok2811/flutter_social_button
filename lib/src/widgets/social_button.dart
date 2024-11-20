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

  /// Enum to define the button style (circle or square).
  final CustomButtonStyle buttonStyle;

  const SocialButton({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.buttonColor,
    required this.label,
    this.titleStyle,
    this.iconSize = 24.0,
    this.showLabel = true,
    this.borderRadius,
    this.padding,
    this.elevation = 2.0,
    this.borderColor,
    this.borderWidth = 0.0,
    this.width,
    this.height,
    this.buttonStyle = CustomButtonStyle.square,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Custom button creation based on style
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: buttonStyle == CustomButtonStyle.circle
              ? null
              : (borderRadius ?? BorderRadius.circular(5)),
          border: borderColor != null && borderWidth! > 0
              ? Border.all(color: borderColor!, width: borderWidth!)
              : null,
          shape: buttonStyle == CustomButtonStyle.circle
              ? BoxShape.circle
              : BoxShape.rectangle,
          boxShadow: [
            if (elevation != 0.0)
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: elevation!,
                spreadRadius: 1.0,
              ),
          ],
        ),
        child: Center(
          child: buttonStyle == CustomButtonStyle.circle
              ? icon
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    icon,
                    if (showLabel)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          label,
                          style: titleStyle ??
                              TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
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
