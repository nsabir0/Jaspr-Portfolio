/// Stub implementations for server-side compilation.
/// These are no-ops on the server; the real implementations are in theme_helper_web.dart.
library;

void applyTheme(bool isDark) {}

void saveThemeToStorage(bool isDark) {}

bool getThemeFromStorage() => false;
