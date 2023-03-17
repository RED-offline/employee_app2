import 'package:employee_app2/features/candidates/candidates_list/domain/candidate_list_cubit.dart';
import 'package:employee_app2/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CandidateListWidget extends StatelessWidget {
  const CandidateListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<CandidateListCubit, CandidateListState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.counterAppBarTitle),
          ),
          body: Center(
            child: Text(l10n.bodyText),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: context.read<CandidateListCubit>().loadInitialData,
            child: const Icon(Icons.refresh),
          ),
        );
      },
    );
  }
}
