import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

/// Sticky glassmorphism navigation bar with brand logo and route links.
class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    var activePath = context.url;

    return header(classes: 'site-header', [
      nav(classes: 'nav-container', [
        // Brand
        Link(
          to: '/',
          child: span(classes: 'nav-brand', [.text('Sakib Abir')]),
        ),
        // Nav links
        div(classes: 'nav-links', [
          for (var route in [
            (label: 'Home', path: '/'),
            (label: 'About', path: '/about'),
          ])
            div(classes: activePath == route.path ? 'nav-item active' : 'nav-item', [
              Link(to: route.path, child: .text(route.label)),
            ]),
          a(href: '#contact', classes: 'nav-item', [.text('Contact')]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.site-header', [
      css('&').styles(
        display: .flex,
        position: .sticky(top: 0.px),
        zIndex: ZIndex(100),
        padding: .symmetric(vertical: 0.75.em, horizontal: 2.em),
        backdropFilter: Filter.blur(12.px),
        justifyContent: .center,
      ),
      css('.nav-container').styles(
        display: .flex,
        width: 100.percent,
        maxWidth: 1100.px,
        justifyContent: .spaceBetween,
        alignItems: .center,
      ),
      css('.nav-brand').styles(
        fontSize: 1.3.rem,
        fontWeight: .w800,
        textDecoration: TextDecoration(line: .none),
      ),
      css('.nav-links', [
        css('&').styles(
          display: .flex,
          alignItems: .center,
        ),
        css('a').styles(
          padding: .symmetric(vertical: 0.5.em, horizontal: 1.em),
          radius: .all(.circular(8.px)),
          fontSize: 0.92.rem,
          fontWeight: .w600,
          textDecoration: TextDecoration(line: .none),
        ),
      ]),
    ]),
  ];
}
