import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/search/presentation/view_model/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';
import '../../../../core/networking/api_service.dart';
import '../../data/repos/search_repository.dart';

class SearchScreen extends StatelessWidget {
  final ApiService _apiService;

  const SearchScreen({super.key, required ApiService apiService})
      : _apiService = apiService;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(SearchRepository(_apiService)),
      child: const Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
