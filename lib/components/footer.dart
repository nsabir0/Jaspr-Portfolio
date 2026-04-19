import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Site footer with social links and copyright.
class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      div(classes: 'footer-links', [
        a(
          href: 'mailto:nsakibabir.official@gmail.com',
          classes: 'footer-link',
          [.text('📧 Email')],
        ),
        a(
          href: 'https://www.linkedin.com/in/nsakibabir/',
          classes: 'footer-link',
          attributes: {'target': '_blank'},
          [.text('💼 LinkedIn')],
        ),
        a(
          href: 'https://github.com/nsakibabir',
          classes: 'footer-link',
          attributes: {'target': '_blank'},
          [.text('🐙 GitHub')],
        ),
      ]),
      p(classes: 'footer-copy', [
        .text('© 2026 Nazmus Sakib Abir. All rights reserved.'),
      ]),
    ]);
  }
}
