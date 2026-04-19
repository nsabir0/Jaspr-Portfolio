import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../models/project.dart';

/// Renders a single project as a Material Design card with hover effects.
class ProjectCard extends StatelessComponent {
  final Project project;

  const ProjectCard({required this.project, super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'project-card', [
      img(
        src: project.imageUrl,
        alt: project.title,
        classes: 'project-card-image',
        loading: MediaLoading.lazy,
      ),
      div(classes: 'project-card-body', [
        div(classes: 'project-card-title', [.text(project.title)]),
        div(classes: 'project-card-desc', [.text(project.description)]),
        div(classes: 'project-card-tags', [
          for (final tag in project.tags) span(classes: 'project-tag', [.text(tag)]),
        ]),
        div(classes: 'project-card-links', [
          if (project.liveUrl != null)
            a(
              href: project.liveUrl!,
              classes: 'project-link live',
              attributes: {'target': '_blank'},
              [.text('🔗 Live Demo')],
            ),
          if (project.sourceUrl != null)
            a(
              href: project.sourceUrl!,
              classes: 'project-link source',
              attributes: {'target': '_blank'},
              [.text('📦 Source')],
            ),
        ]),
      ]),
    ]);
  }
}
