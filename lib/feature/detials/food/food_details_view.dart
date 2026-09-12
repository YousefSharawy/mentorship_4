import 'package:flutter/material.dart';

class FoodDetailsView extends StatelessWidget {
  const FoodDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "",
          errorBuilder: (context, error, stackTrace) {
            return Center(child: Container(child: Icon(Icons.image)));
          },
        ),
        Text("data"),
        
      ],
    );
  }
}
