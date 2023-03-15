import 'package:employee_app2/features/candidates_list/domain/candidate_list_cubit.dart';
import 'package:employee_app2/features/candidates_list/presentation/candidate_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CandidateListModule extends StatelessWidget {
  const CandidateListModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CandidateListCubit(),
        child: const CandidateListPage(),
      ),
    );
  }
}
