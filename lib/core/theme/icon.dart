import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  AppIcons._();

  static const String _basePath = 'assets/icons';

  // Icon Paths
  static const String github = '$_basePath/github.svg';
  static const String logo = '$_basePath/logo.svg';

  // Icon Widgets
  static SvgPicture githubIcon({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
  }) =>
      _buildIcon(github, width: width, height: height, color: color, fit: fit);

  static SvgPicture logoIcon({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
  }) => _buildIcon(logo, width: width, height: height, color: color, fit: fit);

  // Helper method
  static SvgPicture _buildIcon(
    String path, {
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      fit: fit,
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : null,
    );
  }
}
