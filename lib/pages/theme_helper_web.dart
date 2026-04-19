import 'package:web/web.dart' as web;

/// Applies dark/light theme by setting data-theme attribute on `<html>`.
void applyTheme(bool isDark) {
  web.document.documentElement?.setAttribute('data-theme', isDark ? 'dark' : 'light');
}

/// Persists theme preference to localStorage.
void saveThemeToStorage(bool isDark) {
  web.window.localStorage.setItem('theme', isDark ? 'dark' : 'light');
}

/// Reads saved theme preference from localStorage.
bool getThemeFromStorage() {
  return web.window.localStorage.getItem('theme') == 'dark';
}
