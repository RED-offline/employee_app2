import 'package:employee_app2/features/candidates_list/presentation/candidate_list_module.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CandidateListModule();
  }
}
