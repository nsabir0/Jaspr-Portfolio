import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/footer.dart';
import 'components/header.dart';
import 'pages/about.dart';
import 'pages/home.dart';

/// Root app component — server-rendered shell with header, router, and footer.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'main', [
      const Header(),
      Router(routes: [
        Route(path: '/', title: 'Home — Nazmus Sakib Abir', builder: (context, state) => const Home()),
        Route(path: '/about', title: 'About — Nazmus Sakib Abir', builder: (context, state) => const About()),
      ]),
      const Footer(),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.main', [
      css('&').styles(
        display: .flex,
        minHeight: 100.vh,
        flexDirection: .column,
      ),
    ]),
  ];
}
