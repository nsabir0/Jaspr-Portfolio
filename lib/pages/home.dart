import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/contact_form.dart';
import '../components/project_gallery.dart';
import '../models/project.dart';
import 'theme_helper_stub.dart' if (dart.library.html) 'theme_helper_web.dart';

/// Home page — Hero, Project Gallery, Contact Form, Dark Mode Toggle.
@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      isDarkMode = getThemeFromStorage();
      applyTheme(isDarkMode);
    }
  }

  void _toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
    if (kIsWeb) {
      applyTheme(isDarkMode);
      saveThemeToStorage(isDarkMode);
    }
  }

  @override
  Component build(BuildContext context) {
    return div([
      // === HERO SECTION ===
      section(classes: 'hero', [
        div(classes: 'hero-badge', [.text('👋 Welcome to my portfolio')]),
        h1([
          .text('Hi, I\'m '),
          span(classes: 'hero-gradient-text', [.text('Nazmus Sakib Abir')]),
        ]),
        p(classes: 'hero-subtitle', [
          .text(
            'A passionate Software Developer specializing in Flutter & Dart. '
            'I craft beautiful, high-performance mobile and web applications.',
          ),
        ]),
        div(classes: 'hero-cta', [
          a(href: '#projects', classes: 'btn btn-primary', [.text('View Projects ↓')]),
          a(
            href: 'https://www.linkedin.com/in/nsakibabir/',
            classes: 'btn btn-outline',
            attributes: {'target': '_blank'},
            [.text('LinkedIn →')],
          ),
        ]),
      ]),

      // === PROJECT GALLERY ===
      const ProjectGallery(projects: sampleProjects),

      // === CONTACT FORM ===
      const ContactForm(),

      // === DARK MODE TOGGLE (floating button) ===
      button(
        classes: 'theme-toggle',
        onClick: _toggleTheme,
        attributes: {'aria-label': 'Toggle dark mode', 'title': 'Toggle dark mode'},
        [.text(isDarkMode ? '☀️' : '🌙')],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [];
}
