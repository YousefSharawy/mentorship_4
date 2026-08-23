import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/controller/cubit/home_cubit.dart';
import '../../home/view/widgets/home_resturant_container.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return BlocBuilder<HomeCubit, HomeState>(
          builder: (BuildContext context, HomeState state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              allResturantsInitial: () => const SizedBox.shrink(),
              allResturantsLoading: () => const Center(child: CircularProgressIndicator()),
              allResturantsSuccess: (resturants) => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) {
                  return HomeResturantContainer(
                    returantName: resturants[index].restaurantName,
                    address: resturants[index].address,
                    image: "",
                  );
                },
              ),
              allResturantsError: (message) => Text(message ?? 'Something went wrong'),
            );
          },
        );
      },
    );
  }
}
