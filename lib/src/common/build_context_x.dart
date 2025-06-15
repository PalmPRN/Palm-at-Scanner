import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  /// Returns the nearest [Theme] ancestor.
  ThemeData get theme => Theme.of(this);

  /// Returns the nearest [MediaQuery] ancestor.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Returns the nearest [TextTheme] from the current [Theme].
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
