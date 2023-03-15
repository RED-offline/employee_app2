import 'package:employee_app2/features/candidates_list/domain/candidate_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CandidateListPage extends StatelessWidget {
  const CandidateListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CandidateListCubit, CandidateListState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<CandidateListCubit>(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Candidates Page'),
          ),
          body: const Center(
            child: Text('Hello world'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: cubit.updateList,
            child: const Icon(Icons.refresh),
          ),
        );
      },
    );
  }
}
