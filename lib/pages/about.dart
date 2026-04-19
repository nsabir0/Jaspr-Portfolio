import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// About page — Bio, Skills, Experience Timeline.
@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      // === ABOUT HERO ===
      section(classes: 'section-container', [
        div(classes: 'about-hero', [
          div(classes: 'about-avatar', [.text('SA')]),
          h1(classes: 'section-title', [.text('About Me')]),
          p(classes: 'about-bio', [
            .text(
              'I\'m Nazmus Sakib Abir — a dedicated Software Developer with deep expertise '
              'in Flutter, Dart, and mobile-first development. I love turning complex problems '
              'into elegant, user-friendly solutions. From POS systems to portfolio websites, '
              'I bring craft and care to every project.',
            ),
          ]),
          div(classes: 'info-cards', [
            a(
              href: 'mailto:nsakibabir.official@gmail.com',
              classes: 'info-card',
              [
                span(classes: 'info-card-icon', [.text('📧')]),
                .text('nsakibabir.official@gmail.com'),
              ],
            ),
            a(
              href: 'https://www.linkedin.com/in/nsakibabir/',
              classes: 'info-card',
              attributes: {'target': '_blank'},
              [
                span(classes: 'info-card-icon', [.text('💼')]),
                .text('LinkedIn'),
              ],
            ),
            div(classes: 'info-card', [
              span(classes: 'info-card-icon', [.text('📍')]),
              .text('Bangladesh'),
            ]),
          ]),
        ]),
      ]),

      // === SKILLS SECTION ===
      section(classes: 'section-container alt-bg', [
        h2(classes: 'section-title', [.text('Skills & Technologies')]),
        p(classes: 'section-subtitle', [
          .text('Technologies I work with on a daily basis.'),
        ]),
        div(classes: 'skills-grid', [
          for (final skill in _skills)
            div(classes: 'skill-card', [
              span(classes: 'skill-icon', [.text(skill.$1)]),
              span(classes: 'skill-name', [.text(skill.$2)]),
            ]),
        ]),
      ]),

      // === EXPERIENCE TIMELINE ===
      section(classes: 'section-container', [
        h2(classes: 'section-title', [.text('Experience')]),
        p(classes: 'section-subtitle', [
          .text('My professional journey so far.'),
        ]),
        div(classes: 'timeline', [
          for (final exp in _experiences)
            div(classes: 'timeline-item', [
              div(classes: 'timeline-role', [.text(exp.$1)]),
              div(classes: 'timeline-company', [.text(exp.$2)]),
              div(classes: 'timeline-period', [.text(exp.$3)]),
              p(classes: 'timeline-desc', [.text(exp.$4)]),
            ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [];
}

// --- Data as simple tuples (icon, name) ---
const List<(String, String)> _skills = [
  ('🎯', 'Dart'),
  ('📱', 'Flutter'),
  ('🌐', 'Jaspr'),
  ('🔥', 'Firebase'),
  ('🗄️', 'SQLite'),
  ('🎨', 'CSS3'),
  ('⚡', 'REST APIs'),
  ('🐙', 'Git'),
  ('🧪', 'Testing'),
  ('📦', 'GetX'),
  ('🔄', 'Riverpod'),
  ('🖥️', 'Desktop'),
];

// (role, company, period, description)
const List<(String, String, String, String)> _experiences = [
  (
    'Software Developer',
    'Freelance / Self-Employed',
    '2024 — Present',
    'Building cross-platform mobile and desktop applications using Flutter. '
        'Developed CloudPOS — a full-featured POS system with inventory management, '
        'discount engine, and multi-store support.',
  ),
  (
    'Flutter Developer',
    'Personal Projects',
    '2023 — 2024',
    'Developed multiple Flutter applications including e-commerce apps, '
        'task management tools, and utility apps. Focused on clean architecture, '
        'state management patterns, and responsive UI design.',
  ),
];
