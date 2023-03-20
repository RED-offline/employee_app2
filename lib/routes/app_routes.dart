import 'package:employee_app2/features/candidates/candidate_detail/presentation/candidate_detail_page.dart';
import 'package:employee_app2/features/candidates/candidates_list/presentation/candidate_list_page.dart';
import 'package:employee_app2/routes/router_utils.dart';
import 'package:employee_app2/screens/not_found_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static Widget _candidateListPageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return const CandidateListPage();
  }

  static final String candidateDetailPageWithParams =
      '${AppPage.candidateDetailPage.toPath}/:tempIndex';

  static Widget _candidateDetailPageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return CandidateDetailPage(tempIndex: state.params['tempIndex']!);
  }

  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      const NotFoundPage();

  static final GoRouter _router = GoRouter(
    errorBuilder: errorWidget,
    routes: <GoRoute>[
      GoRoute(
        path: AppPage.root.toPath,
        name: AppPage.root.toName,
        builder: _candidateListPageBuilder,
      ),
      GoRoute(
        path: candidateDetailPageWithParams,
        name: AppPage.candidateDetailPage.toName,
        builder: _candidateDetailPageBuilder,
      ),
    ],
  );

  static GoRouter get router => _router;
}
