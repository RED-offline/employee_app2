import 'package:cached_network_image/cached_network_image.dart';
import 'package:employee_app2/features/candidates/candidates_list/domain/candidate_list_cubit.dart';
import 'package:employee_app2/l10n/l10n.dart';
import 'package:employee_app2/routes/app_routes.dart';
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
                onTap: () => context.pushNamed(
                  AppRouter.candidateDetailPage.substring(1),
                  params: {'index': (index + 1).toString()},
                ),
                child: Card(
                  elevation: 15,
                  child: ListTile(
                    leading: Hero(
                      tag: 'avatar ${index + 1}',
                      child: CachedNetworkImage(
                        width: 100,
                        height: 100,
                        imageUrl:
                            'https://i.pinimg.com/564x/7f/ae/ce/7faece91804512c0f95a122bdc3a3324.jpg',
                      ),
                    ),
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
