
import 'package:flutter/material.dart';
import 'package:mentorship_4/core/injection.dart';
import 'package:mentorship_4/feature/home/view/widgets/home_body.dart';
import 'package:mentorship_4/feature/search/controller/cubit/search_cubit.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/spacing_values_manager.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../search/view/search_view.dart';

class HomeSearchSection extends StatefulWidget {
  const HomeSearchSection({super.key});

  @override
  State<HomeSearchSection> createState() => _HomeSearchSectionState();
}

class _HomeSearchSectionState extends State<HomeSearchSection> {
  final FocusNode focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    focusNode.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          controller: getIt<SearchCubit>().searchEditingController,
          onChanged: (value) {
            getIt<SearchCubit>().onQuerryChanged(value);
          },
          keyboardType: .text,
          focusNode: focusNode,
          filledColor: ColorManager.lightGray,
          hint: "Search dishes, restaurants",
          prefixIcon: Icons.search,
        ),
        SizedBox(height: AppHeight.s32),
        focusNode.hasFocus ? const SearchView() : const HomeBody(),
      ],
    );
  }
}
