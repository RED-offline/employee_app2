// ignore_for_file: lines_longer_than_80_chars, must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:employee_app2/features/candidates/candidates_list/domain/candidate_list_cubit.dart';
import 'package:employee_app2/l10n/l10n.dart';
import 'package:employee_app2/models/candidate.dart';
import 'package:employee_app2/routes/router_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CandidateListWidget extends StatelessWidget {
  CandidateListWidget({super.key});

  List<Candidate> candidateList = [
    Candidate(
      id: '1402',
      uid: 'fa7109ca-c50c-4a22-a92c-c780a38e1f61',
      password: 'sNWKVl7DbL',
      firstName: 'Moshe',
      lastName: 'Runolfsson',
      username: 'moshe.runolfsson',
      email: 'moshe.runolfsson@email.com',
      avatar:
          'https://robohash.org/voluptasillosuscipit.png?size=300x300&set=set1',
      gender: 'Genderqueer',
      phoneNumber: '+218 835.612.1985',
      socialInsuranceNumber: '964224232',
      dateOfBirth: '1983 - 07 - 25',
    ),
    Candidate(
      id: '8304',
      uid: 'fa7109ca-c50c-4a22-a92c-c780a38e1f61',
      password: 'sNWKVl7DbL',
      firstName: 'Alona',
      lastName: 'Schulist',
      username: 'alona.schulist',
      email: 'alona.schulist@email.com',
      avatar:
          'https://robohash.org/sedpossimusdoloribus.png?size=300x300&set=set1',
      gender: 'Genderqueer',
      phoneNumber: '+218 835.612.1985',
      socialInsuranceNumber: '964224232',
      dateOfBirth: '1983 - 07 - 25',
    ),
    Candidate(
      id: '6099',
      uid: 'fa7109ca-c50c-4a22-a92c-c780a38e1f61',
      password: 'sNWKVl7DbL',
      firstName: 'Conrad',
      lastName: 'Bernier',
      username: 'conrad.bernier',
      email: 'conrad.bernier@email.com',
      avatar: 'https://robohash.org/utveronulla.png?size=300x300&set=set1',
      gender: 'Genderqueer',
      phoneNumber: '+218 835.612.1985',
      socialInsuranceNumber: '964224232',
      dateOfBirth: '1983 - 07 - 25',
    )
  ];

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
                onTap: () => context.pushNamed(
                  AppPage.candidateDetailPage.toName,
                  params: {'tempIndex': (index + 1).toString()},
                ),
                child: Card(
                  elevation: 15,
                  child: ListTile(
                    leading: Hero(
                      tag: 'avatar ${index + 1}',
                      child: CachedNetworkImage(
                        width: 100,
                        height: 100,
                        imageUrl: candidateList[index].avatar,
                      ),
                    ),
                    title: Text(
                      '${candidateList[index].firstName} ${candidateList[index].lastName}',
                    ),
                    subtitle: Text(candidateList[index].email),
                  ),
                ),
              );
            },
            itemCount: candidateList.length,
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
