import 'package:cached_network_image/cached_network_image.dart';
import 'package:employee_app2/features/candidates/candidate_detail/domain/candidate_detail_cubit.dart';
import 'package:employee_app2/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CandidateDetailWidget extends StatelessWidget {
  const CandidateDetailWidget({
    super.key,
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
              children: [
                CachedNetworkImage(
                  width: 300,
                  height: 400,
                  imageUrl: avatar,
                ),
                Text('Name: $firstName $lastName'),
                Text('ID: $id'),
                Text('UID: $uid'),
                Text('Password: $password'),
                Text('Username: $username'),
                Text('email: $email'),
                Text('avatar: $avatar'),
                Text('gender: $gender'),
                Text('phoneNumber: $phoneNumber'),
                Text('socialInsuranceNumber: $socialInsuranceNumber'),
                Text('dateOfBirth: $dateOfBirth'),
              ],
            ),
          ),
        );
      },
    );
  }
}
