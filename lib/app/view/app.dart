import 'package:employee_app2/features/candidates/candidate_detail/presentation/candidate_detail_page.dart';
import 'package:employee_app2/features/candidates/candidates_list/presentation/candidate_list_page.dart';
import 'package:employee_app2/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  App({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const CandidateListPage(),
      ),
      GoRoute(
        path: '/candidateDetailPage',
        name: 'candidateDetailPage',
        builder: (context, state) => const CandidateDetailPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
    );
  }
}
