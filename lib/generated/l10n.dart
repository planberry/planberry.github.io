// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Открой все возможности приложения`
  String get review_title {
    return Intl.message(
      'Открой все возможности приложения',
      name: 'review_title',
      desc: '',
      args: [],
    );
  }

  /// `Креативный дизайн`
  String get creative_design {
    return Intl.message(
      'Креативный дизайн',
      name: 'creative_design',
      desc: '',
      args: [],
    );
  }

  /// `Наглядная статистика`
  String get visual_statistics {
    return Intl.message(
      'Наглядная статистика',
      name: 'visual_statistics',
      desc: '',
      args: [],
    );
  }

  /// `Гибкая настройка`
  String get flexible_setup {
    return Intl.message(
      'Гибкая настройка',
      name: 'flexible_setup',
      desc: '',
      args: [],
    );
  }

  /// `Быстрая поддержка`
  String get fast_support {
    return Intl.message(
      'Быстрая поддержка',
      name: 'fast_support',
      desc: '',
      args: [],
    );
  }

  /// `Все права сохранены`
  String get copyright {
    return Intl.message(
      'Все права сохранены',
      name: 'copyright',
      desc: '',
      args: [],
    );
  }

  /// `Контакты`
  String get contacts {
    return Intl.message(
      'Контакты',
      name: 'contacts',
      desc: '',
      args: [],
    );
  }

  /// `Planberry\nЭффективное управление временем`
  String get main_title {
    return Intl.message(
      'Planberry\nЭффективное управление временем',
      name: 'main_title',
      desc: '',
      args: [],
    );
  }

  /// `Приложение позволяет эффективно управлять временем`
  String get main_subtitle {
    return Intl.message(
      'Приложение позволяет эффективно управлять временем',
      name: 'main_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Тёмная`
  String get theme_dark {
    return Intl.message(
      'Тёмная',
      name: 'theme_dark',
      desc: '',
      args: [],
    );
  }

  /// `Светлая`
  String get theme_light {
    return Intl.message(
      'Светлая',
      name: 'theme_light',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get lang_desc {
    return Intl.message(
      'Русский',
      name: 'lang_desc',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
