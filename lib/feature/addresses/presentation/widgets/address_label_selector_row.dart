import 'package:flutter/material.dart';
import 'package:mentorship_4/feature/addresses/presentation/widgets/label_container.dart';

class AddressLabelSelectorRow extends StatelessWidget {
  const AddressLabelSelectorRow({super.key, required this.selectedLabel});
  final ValueNotifier<String> selectedLabel;
  @override
  Widget build(BuildContext context) {
      const List<String> labels = ['Home','Work','Other'];
    return ValueListenableBuilder(
      builder: (context, value, child) {
        return Row(
        children: labels.map((l)=>LabelContainer(label: l, isSelected: value == l, onTap: ()=> selectedLabel.value = l )).toList(),
      );
      },
      valueListenable: selectedLabel,
    );
  }
}
