/// Project data model for the portfolio gallery.
class Project {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> tags;
  final String? liveUrl;
  final String? sourceUrl;

  const Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.tags,
    this.liveUrl,
    this.sourceUrl,
  });
}

/// Sample project data for the portfolio.
const List<Project> sampleProjects = [
  Project(
    title: 'CloudPOS',
    description:
        'A full-featured Point of Sale system built with Flutter, featuring inventory management, sales tracking, circular discounts, and multi-store support.',
    imageUrl: 'https://placehold.co/600x400/6366f1/ffffff?text=CloudPOS',
    tags: ['Flutter', 'Dart', 'SQLite', 'GetX'],
    liveUrl: '#',
    sourceUrl: 'https://github.com/nsakibabir',
  ),
  Project(
    title: 'Portfolio Website',
    description:
        'A modern, server-rendered portfolio website built with Jaspr framework featuring dark mode, responsive design, and contact form validation.',
    imageUrl: 'https://placehold.co/600x400/8b5cf6/ffffff?text=Portfolio',
    tags: ['Dart', 'Jaspr', 'CSS3', 'SSR'],
    liveUrl: '#',
    sourceUrl: 'https://github.com/nsakibabir',
  ),
  Project(
    title: 'E-Commerce App',
    description:
        'A cross-platform e-commerce application with product catalog, cart management, payment integration, and order tracking.',
    imageUrl: 'https://placehold.co/600x400/10b981/ffffff?text=E-Commerce',
    tags: ['Flutter', 'Firebase', 'Stripe', 'REST API'],
    liveUrl: '#',
    sourceUrl: 'https://github.com/nsakibabir',
  ),
  Project(
    title: 'Task Manager',
    description:
        'A collaborative task management tool with real-time updates, drag-and-drop Kanban boards, and team workspace features.',
    imageUrl: 'https://placehold.co/600x400/f59e0b/ffffff?text=TaskManager',
    tags: ['Flutter', 'Dart', 'Riverpod', 'Firestore'],
    liveUrl: '#',
    sourceUrl: 'https://github.com/nsakibabir',
  ),
];
