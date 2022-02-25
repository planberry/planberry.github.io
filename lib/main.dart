import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
import 'modules/app-core/app_bloc/app_bloc.dart';
import 'modules/app-core/app_bloc/app_bloc_state.dart';
import 'modules/feature-main-screen/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(lazy: false, create: (_) => AppBloc()..init()),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (BuildContext context, appState) {
          if (appState is AppStateData) {
            return MaterialApp(
              title: 'Flutter Web',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                S.delegate
              ],
              supportedLocales: S.delegate.supportedLocales,
              locale: Locale(appState.localeCode),
              theme: appState.galleryThemeManager.currentThemeData(context),
              home: const HomeScreen(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
