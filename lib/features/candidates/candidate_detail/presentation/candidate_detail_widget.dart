import 'package:employee_app2/features/candidates/candidate_detail/domain/candidate_detail_cubit.dart';
import 'package:employee_app2/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CandidateDetailWidget extends StatelessWidget {
  const CandidateDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<CandidateDetailCubit, CandidateDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.appBarTitle),
            leading: IconButton(
              onPressed: context.pop,
              icon: const Icon(CupertinoIcons.back),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.home),
                Text('Candidate'),
                Text('Position'),
              ],
            ),
          ),
        );
      },
    );
  }
}
