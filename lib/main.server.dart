/// The entrypoint for the **server** environment.
library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(
    Document(
      title: 'Nazmus Sakib Abir — Portfolio',
      meta: {
        'description':
            'Portfolio of Nazmus Sakib Abir — Software Developer specializing in Flutter, Dart, and cross-platform development.',
        'viewport': 'width=device-width, initial-scale=1.0',
        'theme-color': '#6366f1',
      },
      styles: [
        css.import('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap'),
        css.import('styles.css'),
        css('html, body').styles(
          width: 100.percent,
          minHeight: 100.vh,
          padding: .zero,
          margin: .zero,
          fontFamily: const .list([FontFamily('Inter'), FontFamilies.sansSerif]),
        ),
        css('*').styles(
          boxSizing: .borderBox,
        ),
        css('h1, h2, h3, h4, h5, h6').styles(
          margin: .zero,
        ),
        css('p').styles(
          margin: .zero,
        ),
        css('a').styles(
          color: .inherit,
          textDecoration: TextDecoration(line: .none),
        ),
      ],
      body: App(),
    ),
  );
}
