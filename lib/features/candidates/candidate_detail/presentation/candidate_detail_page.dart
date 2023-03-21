import 'package:employee_app2/features/candidates/candidate_detail/domain/candidate_detail_cubit.dart';
import 'package:employee_app2/features/candidates/candidate_detail/presentation/candidate_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CandidateDetailPage extends StatelessWidget {
  const CandidateDetailPage({
    required this.id,
    required this.uid,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.avatar,
    required this.gender,
    required this.phoneNumber,
    required this.socialInsuranceNumber,
    required this.dateOfBirth,
    super.key,
  });

  final String id;
  final String uid;
  final String password;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String avatar;
  final String gender;
  final String phoneNumber;
  final String socialInsuranceNumber;
  final String dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CandidateDetailCubit(),
      child: CandidateDetailWidget(
        id: id,
        uid: uid,
        password: password,
        firstName: firstName,
        lastName: lastName,
        username: username,
        email: email,
        avatar: avatar,
        gender: gender,
        phoneNumber: phoneNumber,
        socialInsuranceNumber: socialInsuranceNumber,
        dateOfBirth: dateOfBirth,
      ),
    );
  }
}
