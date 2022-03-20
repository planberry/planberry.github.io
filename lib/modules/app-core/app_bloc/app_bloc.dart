import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../app_storage_repository.dart';
import '../theme_manager.dart';
import 'app_bloc_state.dart';

class AppBloc extends Cubit<AppState> {
  late AppStorageRepository storageRepository;

  AppBloc() : super(AppEmptyState());

  void init() {
    Stream.fromFuture(initStorage()).listen((storageRepository) {
      this.storageRepository = storageRepository;
      CombineLatestStream.combine2(Stream.fromFuture(_initLocale()),
          Stream.fromFuture(_initThemeManager()), (
        String localeCode,
        ThemeManager themeManager,
      ) {
        updateState(localeCode, themeManager);
      }).listen((value) {
        //ignore
      });
    });
  }

  Future<AppStorageRepository> initStorage({
    bool withClearing = false,
  }) async {
    var storage = AppStorageRepositoryImpl(
      prefs: await SharedPreferences.getInstance(),
    );
    var isFirstRun = await storage.loadFirstRun();
    if ((isFirstRun ?? true) || withClearing) {
      await storage.setFirstRun(false);
    }
    return Future.value(storage);
  }

  Future<String> _initLocale() async {
    return await storageRepository.loadLocale();
  }

  Future<ThemeManager> _initThemeManager() async {
    return ThemeManager(
      await storageRepository.loadThemeId(),
    );
  }

  void setLanguage(String localeCode) {
    storageRepository.setLocaleCode(localeCode);
    updateState(
      localeCode,
      getDataState().galleryThemeManager,
    );
  }

  void updateState(String localeCode, ThemeManager themeManager) {
    emit(AppStateData(themeManager, localeCode));
  }

  void setThemeId(String themeId) async {
    storageRepository.setThemeId(themeId);
    updateState(getDataState().localeCode, await _initThemeManager());
  }

  AppTheme getCurrentAppTheme() {
    return getDataState().galleryThemeManager.appTheme;
  }

  AppStateData getDataState() {
    return (state as AppStateData);
  }

  void swapLanguage() {
    if (getDataState().localeCode == "ru"){
      setLanguage("en");
    }else{
      setLanguage("ru");
    }
  }
}
