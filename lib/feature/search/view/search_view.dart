import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_4/core/injection.dart';
import 'package:mentorship_4/feature/home/view/widgets/home_resturant_container.dart';
import 'package:mentorship_4/feature/search/controller/cubit/search_cubit.dart';
import 'package:mentorship_4/feature/search/view/search_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final keywords = getIt<SearchCubit>().keyWords;
        return state.maybeWhen(
          searchInitial: () => SearchBody(keywords: keywords),
          searchLoading: () => CircularProgressIndicator(),
          searchSuccess: (items) => ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return HomeResturantContainer(
                returantName: items[index].restaurantName,
                image: items[index].imageUrl,
                address: null,
              );
            },
          ),
          searchError: (error) => Text("data"),
          orElse: () => SearchBody(keywords: keywords),
        );
      },
    );
  }
}
