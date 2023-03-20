import 'package:employee_app2/features/candidates/candidate_detail/domain/candidate_detail_cubit.dart';
import 'package:employee_app2/features/candidates/candidate_detail/presentation/candidate_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CandidateDetailPage extends StatelessWidget {
  const CandidateDetailPage({
    required this.index,
    super.key,
  });

  final String index;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CandidateDetailCubit(),
      child: CandidateDetailWidget(indexW: index),
    );
  }
}
