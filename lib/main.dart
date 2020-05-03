import 'package:flutter/material.dart';
import 'first_screen.dart';

import 'package:i18n_extension/i18n_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(startScreen());

Widget startScreen() => MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', "US"),
        const Locale('ua', "UA"),
      ],
      home: I18n(
        child: FirstScreen(),
      ),
    );
