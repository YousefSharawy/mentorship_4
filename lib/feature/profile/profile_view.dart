import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      SizedBox(height: AppHeight.s100,),
      Center(
        child: ElevatedButton(onPressed: (){
          context.pop();
        }, child: Icon(Icons.abc)),
      )
      ],
    ));
  }
}
