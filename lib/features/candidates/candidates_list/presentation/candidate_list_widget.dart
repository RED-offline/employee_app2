import 'package:employee_app2/features/candidates/candidates_list/domain/candidate_list_cubit.dart';
import 'package:employee_app2/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CandidateListWidget extends StatelessWidget {
  const CandidateListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<CandidateListCubit, CandidateListState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.appBarTitle),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => context.pushNamed('candidateDetailPage'),
                child: Card(
                  elevation: 15,
                  child: ListTile(
                    leading: const Icon(CupertinoIcons.photo),
                    title: Text('Candidate ${index + 1}'),
                    subtitle: const Text('Position'),
                  ),
                ),
              );
            },
            itemCount: 20,
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
