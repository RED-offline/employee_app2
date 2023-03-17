// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'candidate_list_state.dart';

class CandidateListCubit extends Cubit<CandidateListState> {
  CandidateListCubit() : super(CandidateListInitial()) {
    loadInitialData();
  }

  void loadInitialData() {
    print('updated');
  }
}
