import 'package:employee_app2/features/candidates/candidate_detail/presentation/candidate_detail_page.dart';
import 'package:employee_app2/features/candidates/candidates_list/presentation/candidate_list_page.dart';
import 'package:employee_app2/screens/not_found_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const root = '/';
  static const candidateDetailPage = '/details/:index';

  static Widget _candidateListPageBuilder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const CandidateListPage();

  static Widget _candidateDetailPageBuilder(
    BuildContext context,
    GoRouterState state,
  ) =>
      CandidateDetailPage(index: state.params['index']!);

  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      const NotFoundPage();

  static final GoRouter _router = GoRouter(
    errorBuilder: errorWidget,
    routes: <GoRoute>[
      GoRoute(
        path: root,
        builder: _candidateListPageBuilder,
      ),
      GoRoute(
        path: candidateDetailPage,
        name: candidateDetailPage.substring(1),
        builder: _candidateDetailPageBuilder,
      ),
    ],
  );

  static GoRouter get router => _router;
}
