enum AppPage {
  root,
  candidateDetailPage,
}

extension AppPageExtension on AppPage {
  String get toPath {
    switch (this) {
      case AppPage.root:
        return '/';
      case AppPage.candidateDetailPage:
        return '/details';
      default:
        return '/';
    }
  }

  String get toName {
    switch (this) {
      case AppPage.root:
        return 'root';
      case AppPage.candidateDetailPage:
        return 'candidateDetailPage';
      default:
        return 'HOME';
    }
  }
}
