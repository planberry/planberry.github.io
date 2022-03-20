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

  /// `Воспользуйся всеми возможностями приложения`
  String get review_title {
    return Intl.message(
      'Воспользуйся всеми возможностями приложения',
      name: 'review_title',
      desc: '',
      args: [],
    );
  }

  /// `Управляй временем качественно`
  String get review_subtitle {
    return Intl.message(
      'Управляй временем качественно',
      name: 'review_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Дизайн`
  String get creative_design {
    return Intl.message(
      'Дизайн',
      name: 'creative_design',
      desc: '',
      args: [],
    );
  }

  /// `Чтобы ничего не отвлекало, мы сделали минималистичный интерфейс`
  String get creative_design_desc {
    return Intl.message(
      'Чтобы ничего не отвлекало, мы сделали минималистичный интерфейс',
      name: 'creative_design_desc',
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

  /// `Наблюдай за результатами в режиме реального времени, вноси быстрые изменения – убеждайся в том, что ты на правильном пути`
  String get visual_statistics_desc {
    return Intl.message(
      'Наблюдай за результатами в режиме реального времени, вноси быстрые изменения – убеждайся в том, что ты на правильном пути',
      name: 'visual_statistics_desc',
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

  /// `Ориентируйся на собственные потребности – настраивай параметры, устанавливай свои ориентиры, будь свободен в выборе`
  String get flexible_setup_desc {
    return Intl.message(
      'Ориентируйся на собственные потребности – настраивай параметры, устанавливай свои ориентиры, будь свободен в выборе',
      name: 'flexible_setup_desc',
      desc: '',
      args: [],
    );
  }

  /// `Поддержка и забота`
  String get fast_support {
    return Intl.message(
      'Поддержка и забота',
      name: 'fast_support',
      desc: '',
      args: [],
    );
  }

  /// `Будь уверен в том, что можешь связаться с нами в любое время. Мы быстро и с радостью ответим на все твои вопросы – в чате и по электронной почте`
  String get fast_support_desc {
    return Intl.message(
      'Будь уверен в том, что можешь связаться с нами в любое время. Мы быстро и с радостью ответим на все твои вопросы – в чате и по электронной почте',
      name: 'fast_support_desc',
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

  /// `Наш канал`
  String get our_channel {
    return Intl.message(
      'Наш канал',
      name: 'our_channel',
      desc: '',
      args: [],
    );
  }

  /// `Написать нам`
  String get our_email {
    return Intl.message(
      'Написать нам',
      name: 'our_email',
      desc: '',
      args: [],
    );
  }

  /// `Управляй временем`
  String get main_title {
    return Intl.message(
      'Управляй временем',
      name: 'main_title',
      desc: '',
      args: [],
    );
  }

  /// `Каждый современный человек знает, как важно научиться управлять своим временем. Тайм-менеджмент помогает нам экономить ресурсы, определять собственные потребности, расставлять приоритеты, сохранять фокус на самом важном. Наше приложение создано для того, чтобы помочь структурировать время и провести его с пользой.`
  String get main_subtitle {
    return Intl.message(
      'Каждый современный человек знает, как важно научиться управлять своим временем. Тайм-менеджмент помогает нам экономить ресурсы, определять собственные потребности, расставлять приоритеты, сохранять фокус на самом важном. Наше приложение создано для того, чтобы помочь структурировать время и провести его с пользой.',
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
