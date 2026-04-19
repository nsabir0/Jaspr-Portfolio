import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../models/project.dart';
import 'project_card.dart';

/// Responsive grid gallery that maps a list of projects into ProjectCards.
class ProjectGallery extends StatelessComponent {
  final List<Project> projects;

  const ProjectGallery({required this.projects, super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'section-container alt-bg', id: 'projects', [
      h2(classes: 'section-title', [.text('Featured Projects')]),
      p(classes: 'section-subtitle', [
        .text('A selection of projects I\'ve built with passion and precision.'),
      ]),
      div(classes: 'project-grid', [
        for (final project in projects) ProjectCard(project: project),
      ]),
    ]);
  }
}
