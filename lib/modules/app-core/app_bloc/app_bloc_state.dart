import '../theme_manager.dart';

abstract class AppState {}

class AppEmptyState extends AppState {}

class AppStateData extends AppState {
  final ThemeManager galleryThemeManager;
  final String localeCode;

  AppStateData(this.galleryThemeManager, this.localeCode);
}
