import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'candidate_detail_state.dart';

class CandidateDetailCubit extends Cubit<CandidateDetailState> {
  CandidateDetailCubit() : super(CandidateDetailInitial());
}
